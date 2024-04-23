Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 7157F8AEB1F
	for <lists+intel-wired-lan@lfdr.de>; Tue, 23 Apr 2024 17:30:39 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 263B380ABA;
	Tue, 23 Apr 2024 15:30:38 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 6aLz3tqIkmsD; Tue, 23 Apr 2024 15:30:37 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 8CD66812FB
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1713886235;
	bh=2PasE5zHDUZQpfPlcoJSnFo4u5YpglCrOsGZQUACmWk=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=47s4p4Cet3XQxqAvYt75r5ITg5ToHwdfQD00o1q/ozZhaYsyZaynq463+Wf3ACemW
	 9ouwIFu+h090GTAh7RfQ7SKycZuS6O6vC4thi6/3N62coSx/cyvAXetFA4Mq2R4n4e
	 VckGXQjxLqe2t/79xu2SKPN3S247WRut4NEonsD+aCK7pbkfbPUrH+bVwkbwxAG9bQ
	 +vqKkh1PPYeOWhJXvViCNJqLErTZsRRb0ujx+wfI2R/1FtGAREcwNxibLcn9Y6YJNB
	 m+MkRV8QMoFiUUEm03hNKaUt5GVS/dvtMgiDvxau61r94u1IdQkrrjme+J0pHpZZYC
	 yoLZ2HWKszgOA==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 8CD66812FB;
	Tue, 23 Apr 2024 15:30:35 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 4F5F71BF343
 for <intel-wired-lan@lists.osuosl.org>; Tue, 23 Apr 2024 15:30:33 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 399EC812D9
 for <intel-wired-lan@lists.osuosl.org>; Tue, 23 Apr 2024 15:30:33 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 8gn4QNosDMyv for <intel-wired-lan@lists.osuosl.org>;
 Tue, 23 Apr 2024 15:30:32 +0000 (UTC)
Received-SPF: None (mailfrom) identity=mailfrom;
 client-ip=2a00:1450:4864:20::335; helo=mail-wm1-x335.google.com;
 envelope-from=jiri@resnulli.us; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 9AF2380ABA
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 9AF2380ABA
Received: from mail-wm1-x335.google.com (mail-wm1-x335.google.com
 [IPv6:2a00:1450:4864:20::335])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 9AF2380ABA
 for <intel-wired-lan@lists.osuosl.org>; Tue, 23 Apr 2024 15:30:09 +0000 (UTC)
Received: by mail-wm1-x335.google.com with SMTP id
 5b1f17b1804b1-41a1d88723bso19034095e9.0
 for <intel-wired-lan@lists.osuosl.org>; Tue, 23 Apr 2024 08:30:09 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1713886207; x=1714491007;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:to:from:date:x-gm-message-state:from:to:cc:subject:date
 :message-id:reply-to;
 bh=2PasE5zHDUZQpfPlcoJSnFo4u5YpglCrOsGZQUACmWk=;
 b=YZ56W2rdtkBTXSGxHbBYmJB3+dqhGIWqwdfqhzh/WwVgnwpvPJdZhjKtTpg7V5wa4A
 hqh6/tM8pCgoITMfZovoZkHVy/e1kj04UOf3Nr2aEGZo4W+rt3/5+WsZKkbQ+THqb1Or
 o25AnFs2r2mmVzjIHxkSLN5E3bZEP1DhbYAm/XU9STzSUwvm5NANpzbgKFNFpW38KOmU
 h+zVrXbiacI1M8iCaPZeZG8HjKLASdek9zU4aq8vvPSZ/POeEzHO4wVILKvCBtOt9XYk
 pb4ZfMe8p6JPDP8ROebos6I32e13CYiW2/3vP43yZHnH4A+4cmzzpMqVsCpbO5ybGFPI
 keTQ==
X-Forwarded-Encrypted: i=1;
 AJvYcCVKOfgS6EL7CSuKuWL2JXlowxVCraG92aF6b6kZl9is3aS1uXSAXxExv+ns3cV+IGQqLAtyohjDGyhYV54BPPWm8HTzYiqiLqkJi0MqvdycAg==
X-Gm-Message-State: AOJu0YxqYdFSCf4kvu4eRRBOOiNa5hiEH+VvKqZD3x/JH0TGNNEZgR2Y
 Vgx896UUOMtJ0SVryGYdKLbAj3giwFKRK00NED9+Jg7k2/EW1ICrxy8qx3VNlc0=
X-Google-Smtp-Source: AGHT+IGtEkEhcb5mQc3KY/J9uWfPMgymkhpoR4p6Es6H93bP2NJvAnRHhoqtAk124PPyocNsK1fuzQ==
X-Received: by 2002:adf:ec4d:0:b0:34a:2852:f119 with SMTP id
 w13-20020adfec4d000000b0034a2852f119mr8476258wrn.36.1713886207063; 
 Tue, 23 Apr 2024 08:30:07 -0700 (PDT)
Received: from localhost ([193.47.165.251]) by smtp.gmail.com with ESMTPSA id
 p5-20020a5d48c5000000b0034afaa9ca47sm6577931wrs.1.2024.04.23.08.30.05
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 23 Apr 2024 08:30:06 -0700 (PDT)
Date: Tue, 23 Apr 2024 17:30:02 +0200
From: Jiri Pirko <jiri@resnulli.us>
To: netdev@vger.kernel.org, intel-wired-lan@lists.osuosl.org
Message-ID: <ZifT-pli5-3KBd2i@nanopsycho>
References: <20240423102446.901450-1-vinschen@redhat.com>
 <Ziea2_SRYoGcy9Sw@nanopsycho>
 <Zie9ffllQf8qxv2-@calimero.vinschen.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <Zie9ffllQf8qxv2-@calimero.vinschen.de>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=resnulli-us.20230601.gappssmtp.com; s=20230601; t=1713886207; x=1714491007;
 darn=lists.osuosl.org; 
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:to:from:date:from:to:cc:subject:date:message-id:reply-to;
 bh=2PasE5zHDUZQpfPlcoJSnFo4u5YpglCrOsGZQUACmWk=;
 b=cPIjnCwq1EC5oTwhmqISfoxnmqei5UEXKDnq1CxTvHaX5r9knN+V5DdtQi/+yIsQHV
 SJ8A7N2EdGyobRNEIsxJjnhIZQpEC1N3d3CfUtPFYIMxcq+j+DcRFe0GT5IKd8Jh31Km
 RmNdcykf4XuSYkmhgJ4h1/jKY/fUXSny9zNZYK9gk2A4Um5ow8X7XSybG763Th9e8NhZ
 rw4KCIbEeeBZRxKgu/WJu8oRcdS5gkmwYg9No/ksav7ariyuAKFL+/QaUFrVbZsPb2Ui
 W6JwpNJ74M0x3qpeGplUDZPFXOhmU+GMf0ndaKAWSWPqmHApMTwdwSnrVUz9Y87B46OP
 DEyg==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=resnulli.us
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=resnulli-us.20230601.gappssmtp.com
 header.i=@resnulli-us.20230601.gappssmtp.com header.a=rsa-sha256
 header.s=20230601 header.b=cPIjnCwq
Subject: Re: [Intel-wired-lan] [PATCH] igb: cope with large MAX_SKB_FRAGS.
X-BeenThere: intel-wired-lan@osuosl.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: Intel Wired Ethernet Linux Kernel Driver Development
 <intel-wired-lan.osuosl.org>
List-Unsubscribe: <https://lists.osuosl.org/mailman/options/intel-wired-lan>, 
 <mailto:intel-wired-lan-request@osuosl.org?subject=unsubscribe>
List-Archive: <http://lists.osuosl.org/pipermail/intel-wired-lan/>
List-Post: <mailto:intel-wired-lan@osuosl.org>
List-Help: <mailto:intel-wired-lan-request@osuosl.org?subject=help>
List-Subscribe: <https://lists.osuosl.org/mailman/listinfo/intel-wired-lan>,
 <mailto:intel-wired-lan-request@osuosl.org?subject=subscribe>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Tue, Apr 23, 2024 at 03:54:05PM CEST, vinschen@redhat.com wrote:
>Hi Jiri,
>
>On Apr 23 13:26, Jiri Pirko wrote:
>> Tue, Apr 23, 2024 at 12:24:46PM CEST, vinschen@redhat.com wrote:
>> >From: Paolo Abeni <pabeni@redhat.com>
>> >
>> >Sabrina reports that the igb driver does not cope well with large
>> >MAX_SKB_FRAG values: setting MAX_SKB_FRAG to 45 causes payload
>> >corruption on TX.
>> >
>> >The root cause of the issue is that the driver does not take into
>> >account properly the (possibly large) shared info size when selecting
>> >the ring layout, and will try to fit two packets inside the same 4K
>> >page even when the 1st fraglist will trump over the 2nd head.
>> >
>> >Address the issue forcing the driver to fit a single packet per page,
>> >leaving there enough room to store the (currently) largest possible
>> >skb_shared_info.
>> >
>> >Fixes: 3948b05950fd ("net: introduce a config option to tweak MAX_SKB_FRAG")
>> >Reported-by: Jan Tluka <jtluka@redhat.com>
>> >Reported-by: Jirka Hladky <jhladky@redhat.com>
>> >Reported-by: Sabrina Dubroca <sd@queasysnail.net>
>> >Tested-by: Sabrina Dubroca <sd@queasysnail.net>
>> >Tested-by: Corinna Vinschen <vinschen@redhat.com>
>> >Signed-off-by: Paolo Abeni <pabeni@redhat.com>
>> >---
>> > drivers/net/ethernet/intel/igb/igb_main.c | 1 +
>> 
>> Also, please use get_maintainer.pl script to get cclist.
>
>done and done in v2 (for which I forgot the "in-reply-to" now, d'uh)

In-reply-to is not needed. Send each V to separate thread.

>
>Thanks,
>Corinna
>
>
