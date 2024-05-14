Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id E39878C59FF
	for <lists+intel-wired-lan@lfdr.de>; Tue, 14 May 2024 19:01:31 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 064E0415CE;
	Tue, 14 May 2024 17:01:30 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id m92UoeYYWHyy; Tue, 14 May 2024 17:01:28 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org E376A415F8
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1715706088;
	bh=VpL9ckhM2YONgCKwIgIxImKCVVLS7o9hHr+mnWRzhqs=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=X4WKrTjXvFNpwHAHHhIKOaavOh7a/n+9FotU8WQvmFOuuGtOLn+4IaRaSxubiKp6+
	 NGghTb1xzUnSbBTXFbR4KoOn3iJqlp7/AzNJJxRlc69WABDlOrKF8hhDCYqJXtPcL+
	 cGFL7t4/4FTDVcwMuJnV5DxTWTaJfVCDHHANOQb3MtClY2YEuPrZb6HcvXEvG12/cb
	 AzJABdwIFP1+wAoRE0siXfcBn8m7gJXngWbcBnCDQDwy1drLYOtZ0Zl3qomssSdEZi
	 12M/I0plmQ2ftp1Yh1fy65oRxYOwDBCjaN3f25UW4IKvicGWcI4KDJWWdFsXszMbZa
	 xfp5U1VGfJCAA==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id E376A415F8;
	Tue, 14 May 2024 17:01:27 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id B53A71BF372
 for <intel-wired-lan@lists.osuosl.org>; Tue, 14 May 2024 04:34:42 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id AD4004045F
 for <intel-wired-lan@lists.osuosl.org>; Tue, 14 May 2024 04:34:42 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id wP52R3xxGalJ for <intel-wired-lan@lists.osuosl.org>;
 Tue, 14 May 2024 04:34:42 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2607:f8b0:4864:20::535; helo=mail-pg1-x535.google.com;
 envelope-from=bagasdotme@gmail.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org CCA1440373
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org CCA1440373
Received: from mail-pg1-x535.google.com (mail-pg1-x535.google.com
 [IPv6:2607:f8b0:4864:20::535])
 by smtp2.osuosl.org (Postfix) with ESMTPS id CCA1440373
 for <intel-wired-lan@lists.osuosl.org>; Tue, 14 May 2024 04:34:41 +0000 (UTC)
Received: by mail-pg1-x535.google.com with SMTP id
 41be03b00d2f7-5cdbc4334edso2644004a12.3
 for <intel-wired-lan@lists.osuosl.org>; Mon, 13 May 2024 21:34:41 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1715661281; x=1716266081;
 h=content-transfer-encoding:in-reply-to:from:content-language
 :references:cc:to:subject:user-agent:mime-version:date:message-id
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=VpL9ckhM2YONgCKwIgIxImKCVVLS7o9hHr+mnWRzhqs=;
 b=S1otx1EjBOkdaH8plepQ/DpeFGOLjiK0Kwx9SaKhpzkTaeXWW6XND5xWb5bJPFXnhh
 oP7YOGHwBPzGwT9Achismfo+WIoB1eNPmyQNd0yF8WaUDexL2b//JQJn264xskF9UpX2
 qf8Gqh7Gr2C3YPAGsQiE10M0vA2bNBMT2n7un0czpS1+3aEll+Gb36+6lrDKJQ9z1Idw
 ESMHUHWn0ORBSQHCI80BsqMm4iefSyj3UqTKQ758aS/rCQaJ263tGK+59gJzTEDHSNql
 qQpAJrnu08TgQIezScQgVmnZLXjXqd81azG5leM+wyr1MuG0tvDyAmwiv0zuDUEa4kgV
 w5RA==
X-Forwarded-Encrypted: i=1;
 AJvYcCWJTs3J+eZihMpTeLp8OZw6BzN2zngsKQTVB0FfGDWyOgam9fP/t4yjEsokYAndN9gbwlRAN4bhYVH+q3I0+cCqvcvVYX3aJn8lHyOY73jOvw==
X-Gm-Message-State: AOJu0YwdOKYa7cptv1L8ctQH/uXgT05datN5KZMg854OFBdy1DUd49Hq
 wOHe1NVy/FhN7320jEJfDED13qLnReteJ9XrJG8Ccyr2daAc8SEs
X-Google-Smtp-Source: AGHT+IHXgL9debFvWZAoCQrU5U3M+829xjnxkEz0F7kqoip4AF5ZVEbhUB6ydMsOHSFm+eW2DZtPlg==
X-Received: by 2002:a05:6a21:628:b0:1a7:9cf6:6044 with SMTP id
 adf61e73a8af0-1afde0dc45cmr9412708637.27.1715661279888; 
 Mon, 13 May 2024 21:34:39 -0700 (PDT)
Received: from [192.168.0.107] ([103.124.138.155])
 by smtp.gmail.com with ESMTPSA id
 d9443c01a7336-1ef0b9d47e0sm87638805ad.5.2024.05.13.21.34.35
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Mon, 13 May 2024 21:34:39 -0700 (PDT)
Message-ID: <56463a97-eb90-4884-b2f5-c165f6c3516a@gmail.com>
Date: Tue, 14 May 2024 11:34:32 +0700
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Andrew Lunn <andrew@lunn.ch>
References: <ZkHSipExKpQC8bWJ@archie.me>
 <b2897fda-08e8-40de-b78a-86e92bde41db@lunn.ch>
Content-Language: en-US
From: Bagas Sanjaya <bagasdotme@gmail.com>
In-Reply-To: <b2897fda-08e8-40de-b78a-86e92bde41db@lunn.ch>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Mailman-Approved-At: Tue, 14 May 2024 17:01:25 +0000
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1715661281; x=1716266081; darn=lists.osuosl.org;
 h=content-transfer-encoding:in-reply-to:from:content-language
 :references:cc:to:subject:user-agent:mime-version:date:message-id
 :from:to:cc:subject:date:message-id:reply-to;
 bh=VpL9ckhM2YONgCKwIgIxImKCVVLS7o9hHr+mnWRzhqs=;
 b=MdpyAxud/HpVO5IDa3ZY6C6GpKVvF+yykWlXFMHywjut6zowHBAX+1tnqOZBhclil6
 bndxoXjHF3VKbpaCm1PB0rACChM2BIxx9fNbDxFBiQSWgVvXZCluajZ/eC2kPQgaZSIo
 w42w7Nw2bX0VN1eWp38YN+BCttd4p0DoO5UejHujMbHRfMNwR/ZiV0GNl0eFArv9mkF+
 8ewXtWdaYSQycDIT+pUVq+TBGVg2Ihid6LVgwelmUwT80Mfc8mTzu0uQncD8hB9GaprO
 lz9oCChVMtZ4DtCV7f1xZj6URdCbP0xLxugACnWEi/7ED2UJ91YixvWDumtu8MFObujv
 IBcw==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=gmail.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256
 header.s=20230601 header.b=MdpyAxud
Subject: Re: [Intel-wired-lan] Regression of e1000e (I219-LM) from 6.1.90 to
 6.6.30
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
Cc: Linux Regressions <regressions@lists.linux.dev>,
 lukas.probsthain@googlemail.com, Linux Networking <netdev@vger.kernel.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Eric Dumazet <edumazet@google.com>, Tony Nguyen <anthony.l.nguyen@intel.com>,
 Jakub Kicinski <kuba@kernel.org>, intel-wired-lan@lists.osuosl.org,
 Paolo Abeni <pabeni@redhat.com>, "David S. Miller" <davem@davemloft.net>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On 5/14/24 00:17, Andrew Lunn wrote:
> On Mon, May 13, 2024 at 03:42:50PM +0700, Bagas Sanjaya wrote:
>> Hi,
>>
>> <lukas.probsthain@googlemail.com> reported on Bugzilla
>> (https://bugzilla.kernel.org/show_bug.cgi?id=218826) regression on his Thinkpad
>> T480 with Intel I219-LM:
>>
>>> After updating from kernel version 6.1.90 to 6.6.30, the e1000e driver exhibits a regression on a Lenovo Thinkpad T480 with an Intel I219-LM Ethernet controller.
> 
> Could you try a git bisect between these two kernel versions? You
> might be able to limit it to drivers/net/ethernet/intel/e1000e, which
> only had around 15 patches.
> 

The BZ reporter (Cc'ed) says that bisection is in progress. You may
want to log in to BZ to reach him.

Thanks.

-- 
An old man doll... just what I always wanted! - Clara

