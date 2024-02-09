Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id E39F884F57B
	for <lists+intel-wired-lan@lfdr.de>; Fri,  9 Feb 2024 13:59:47 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 24A674072C;
	Fri,  9 Feb 2024 12:59:46 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 6TO5-VyyGCFK; Fri,  9 Feb 2024 12:59:45 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 42BC64072F
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1707483585;
	bh=bLBOSi8gm05grQqzt4FnjAmGltL2gX6trwT/n7Nt0zQ=;
	h=Date:From:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=rr6N4q83H4V5nVCHIMZY3OJ+D7EUd/TlE39rVG8Msn6fUJn+/TnY/jtZPpznzROIN
	 Xs3qza1sxddC6bGUHiTyPH5oMHQQuRIZpZzXE2BDCv0RRPxyMN637T0fNxTuPKglWb
	 YwsvD9j1vg20mPF7G+y134thitExNTbc/9rMgUoQqQOWg8OcUSSmRnu+1z4KjVeE7H
	 ogosbY5Dt7rvp4qToxqh5clLioFkjV6Foh2zmea82USoY6uTF2I3+2BvFfqfH6JqC1
	 0rfMRgcBorRdKI5u8QQ9m/j175xNMtCp3uJogiAaEashJbnH7GOdxd4TgoZRePs6CV
	 O/a1TLA1ot8Gw==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 42BC64072F;
	Fri,  9 Feb 2024 12:59:45 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 70CC01BF30A
 for <intel-wired-lan@lists.osuosl.org>; Fri,  9 Feb 2024 12:59:42 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 6A58A841C8
 for <intel-wired-lan@lists.osuosl.org>; Fri,  9 Feb 2024 12:59:42 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 13s1uZ2dF8le for <intel-wired-lan@lists.osuosl.org>;
 Fri,  9 Feb 2024 12:59:41 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2a00:1450:4864:20::235; helo=mail-lj1-x235.google.com;
 envelope-from=dan.carpenter@linaro.org; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org EAB38841A6
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org EAB38841A6
Received: from mail-lj1-x235.google.com (mail-lj1-x235.google.com
 [IPv6:2a00:1450:4864:20::235])
 by smtp1.osuosl.org (Postfix) with ESMTPS id EAB38841A6
 for <intel-wired-lan@lists.osuosl.org>; Fri,  9 Feb 2024 12:59:40 +0000 (UTC)
Received: by mail-lj1-x235.google.com with SMTP id
 38308e7fff4ca-2d09bdddfc9so10516351fa.2
 for <intel-wired-lan@lists.osuosl.org>; Fri, 09 Feb 2024 04:59:40 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1707483578; x=1708088378;
 h=content-disposition:mime-version:message-id:subject:cc:to:from:date
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=bLBOSi8gm05grQqzt4FnjAmGltL2gX6trwT/n7Nt0zQ=;
 b=ZrJ6xBRjaT3lygI4T4Zzfu4+ajeVhMDsJ5Jjrq4RUdiVPNUU/cg5z/AfNQnthrdZ7l
 hDkzGXIRi6QVq7cyuna/Vc49yJSHlzJ0DbGp5z4B7BoFDkzIEiBIwtVpDrfQoSgOmSIv
 pl7Luuyw0Kw1C5P2VuGEnmWrlewZMe7uC+EXbd0zmgYl4Fc/sYF+/MxxYt9S8HQW6p5i
 T5zLgYZLlV8py/gWkJSY5Ohz3KlPb6/02sS4oxE04vVk6Kzf3EFdp95ZT9uTqoLnbUNS
 MQzSAwcp3geLNzV5JN1eoHXy93PG0mv+44kQzWF8LSqzLmXLGIuOSgnJsIt46Kyxe1Tk
 Gh8g==
X-Gm-Message-State: AOJu0YwyXO9V9i88T8axuBH6JMKljwn3X0f3W7kWWIwaMkaudNUMoqyy
 rOETQUiqlWceZKy81IzYPJ6e+n3p1FQl3F6N0bUdUpC/WxymqXz/H9ZTgkXVXEg=
X-Google-Smtp-Source: AGHT+IHckFhoegqBUl3bTrY82a4UT/+vnLUEf8VQXbU6pU9pyfIy/aDu56SwoOpx8iEfZWBqYMtj2g==
X-Received: by 2002:a2e:a202:0:b0:2d0:9c51:36c8 with SMTP id
 h2-20020a2ea202000000b002d09c5136c8mr1032629ljm.17.1707483578606; 
 Fri, 09 Feb 2024 04:59:38 -0800 (PST)
X-Forwarded-Encrypted: i=1;
 AJvYcCXOSal4otMupZefot9lK7hqMNXGSIiGWuhmyfpJQked+0H3sf1mYC2/AGXSV1qKLztLAyrHGDSHqHaKU27/zGObaAPzgFK0Mqk=
Received: from localhost ([102.222.70.76]) by smtp.gmail.com with ESMTPSA id
 k8-20020a508ac8000000b00561234fa24fsm803011edk.49.2024.02.09.04.59.37
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 09 Feb 2024 04:59:38 -0800 (PST)
Date: Fri, 9 Feb 2024 15:59:34 +0300
From: Dan Carpenter <dan.carpenter@linaro.org>
To: shannon.nelson@amd.com
Message-ID: <db31a0b0-4d9f-4e6b-aed8-88266eb5665c@moroto.mountain>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=linaro.org; s=google; t=1707483578; x=1708088378; darn=lists.osuosl.org;
 h=content-disposition:mime-version:message-id:subject:cc:to:from:date
 :from:to:cc:subject:date:message-id:reply-to;
 bh=bLBOSi8gm05grQqzt4FnjAmGltL2gX6trwT/n7Nt0zQ=;
 b=sCZDu6PEbL/5VAEBtoB9+PDDftO8zObLWBMXClweXbZSv8fMa/QimnvjTW2wFDZEGm
 QJTPVLiK1ZhQaTPYn+k54PbomqUg3P2byb0gr5TOB/eBkHARvFHzs4YRfZsxBYRah6eD
 b3CDMXAQMrlGYE+I1sEQwjBd7yKwBgj0cyL4uaVPq9LYGeNlJ0NdilpHJBeDlZoaG7kB
 rU1AkeF6Rv+lhUfu68HPxMGZ+1BXtYUOb43nGNvlmF3Rx/ESDxKwFEHjNPlOzsAvTtma
 uwY1NzCGLQURSwK48Ejwq/ZcVORe6NmDcv04JqPX09WUbueTAiXMFB4roK3BecMtG6JL
 qd0Q==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=linaro.org
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=linaro.org header.i=@linaro.org header.a=rsa-sha256
 header.s=google header.b=sCZDu6PE
Subject: [Intel-wired-lan] [bug report] ixgbe: add VF IPsec management
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
Cc: intel-wired-lan@lists.osuosl.org
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Hello Shannon Nelson,

The patch eda0333ac293: "ixgbe: add VF IPsec management" from Aug 13,
2018 (linux-next), leads to the following Smatch static checker
warning:

	drivers/net/ethernet/intel/ixgbe/ixgbe_ipsec.c:917 ixgbe_ipsec_vf_add_sa()
	warn: sleeping in IRQ context

drivers/net/ethernet/intel/ixgbe/ixgbe_ipsec.c
    890 int ixgbe_ipsec_vf_add_sa(struct ixgbe_adapter *adapter, u32 *msgbuf, u32 vf)
    891 {
    892         struct ixgbe_ipsec *ipsec = adapter->ipsec;
    893         struct xfrm_algo_desc *algo;
    894         struct sa_mbx_msg *sam;
    895         struct xfrm_state *xs;
    896         size_t aead_len;
    897         u16 sa_idx;
    898         u32 pfsa;
    899         int err;
    900 
    901         sam = (struct sa_mbx_msg *)(&msgbuf[1]);
    902         if (!adapter->vfinfo[vf].trusted ||
    903             !(adapter->flags2 & IXGBE_FLAG2_VF_IPSEC_ENABLED)) {
    904                 e_warn(drv, "VF %d attempted to add an IPsec SA\n", vf);
    905                 err = -EACCES;
    906                 goto err_out;
    907         }
    908 
    909         /* Tx IPsec offload doesn't seem to work on this
    910          * device, so block these requests for now.
    911          */
    912         if (sam->dir != XFRM_DEV_OFFLOAD_IN) {
    913                 err = -EOPNOTSUPP;
    914                 goto err_out;
    915         }
    916 
--> 917         xs = kzalloc(sizeof(*xs), GFP_KERNEL);
                                          ^^^^^^^^^^
Sleeping allocation.

The call tree that Smatch is worried about is:

ixgbe_msix_other() <- IRQ handler
-> ixgbe_msg_task()
   -> ixgbe_rcv_msg_from_vf()
      -> ixgbe_ipsec_vf_add_sa()

This is a fairly new warning and those have a higher risk of false
positives.  Plus the longer the call tree the higher the chance of
false positives.  However, I did review it and the warning looks
reasonable.

regards,
dan carpenter
