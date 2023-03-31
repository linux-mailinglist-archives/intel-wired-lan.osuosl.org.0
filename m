Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 8EFA56D2880
	for <lists+intel-wired-lan@lfdr.de>; Fri, 31 Mar 2023 21:12:43 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 0A18E84711;
	Fri, 31 Mar 2023 19:12:42 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 0A18E84711
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1680289962;
	bh=GmJTCptWg+5bxwK0WWdLZTJ58pGxOSyA08r03xQR9P4=;
	h=From:Date:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=Q/6o26e4zLEedazfmT37LMY8AYcUBYKxBvkd2l5fv0XTGcviqOlJei87fhmpJPGzM
	 ZPAQ4xTZxWFUQ3c4DAuCKTyLrnVRFiWPqHswJbV7FEIgR5dmGYVTo/E99Kkl09DwEy
	 6Kjb51XC5UZf47XSw5PUWt6gTHeEpSFPhq1I3DiyX1mRdiIufwqDDgnaW2WoXlubF/
	 L2YiwpYxzJejRSoCu1DwhTY2ATCdKee1a1Y49KipZ12jdJqd4842/XvqMRMI8Qc+9K
	 xDTDMBcNWkkmZwmmgjHcsE12dESBEWR7UWX5f/k6ChOzl1cWE/PjLotj8uLoAdqOBr
	 dhJxPHnMpHoMA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id HVie_f0R_mN7; Fri, 31 Mar 2023 19:12:41 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 0AC6F84709;
	Fri, 31 Mar 2023 19:12:41 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 0AC6F84709
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 40D611BF329
 for <intel-wired-lan@lists.osuosl.org>; Fri, 31 Mar 2023 19:12:36 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 14F1360F28
 for <intel-wired-lan@lists.osuosl.org>; Fri, 31 Mar 2023 19:12:36 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 14F1360F28
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 3LUpL7SwLma3 for <intel-wired-lan@lists.osuosl.org>;
 Fri, 31 Mar 2023 19:12:35 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 6281460E83
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.129.124])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 6281460E83
 for <intel-wired-lan@lists.osuosl.org>; Fri, 31 Mar 2023 19:12:35 +0000 (UTC)
Received: from mail-lf1-f70.google.com (mail-lf1-f70.google.com
 [209.85.167.70]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-321-jD718m-DNfWwdaBo5826UA-1; Fri, 31 Mar 2023 15:12:30 -0400
X-MC-Unique: jD718m-DNfWwdaBo5826UA-1
Received: by mail-lf1-f70.google.com with SMTP id
 b11-20020a19670b000000b004e9b307b224so9003380lfc.7
 for <intel-wired-lan@lists.osuosl.org>; Fri, 31 Mar 2023 12:12:30 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112; t=1680289949;
 h=content-transfer-encoding:in-reply-to:references:to
 :content-language:subject:cc:user-agent:mime-version:date:message-id
 :from:x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=673XRyizobae774kUu5nrXw20qs2InjIWxuBx9XJVCI=;
 b=yRgqYWUiVYuuVyzIfztg2e24RQMAINPdUnkRlcI22cBjgVyVSMlY1KYwF+X2J2GY8c
 prKeJo9gOUzbARvtHx3Acav+NTYMLeyP1SrbFU6qJwgTI+lPEOKgq6pTJh5QdtOkGN5E
 PUILSVPyOyP82tqgB7em+mco9l18DNFj/xdiwpJe0x9smgqGtn2kQnaQTxURJSR6hWiC
 kYXqA8i6dRomTLObn61A2PiaYf9UlTbjxzFkd5cmE2IiYlW36F78Zd7HZoTtq01pE0Sn
 z6YGHZXmhMSa7Ggr7x9SC+rvhGk6uV21Ns1gPyTGoZz+No8VYx3FdfMhEQ8szZaxdep8
 u/Jg==
X-Gm-Message-State: AAQBX9fNSt9qeBqV5cswJNskJ8E+Stelox+COVRUZioUf6FSF4Y4++Wb
 z5maiLejedBVl2j4vrnK37AyYoLYXB+0BaJMulDEDJ51kG7oi1v9Kih+tsJVwAPGcGsgsOPDLyI
 hmX6j1pjy85x8c9gVY9/6ijPAUw8XpA==
X-Received: by 2002:ac2:57d0:0:b0:4e9:ad85:aa09 with SMTP id
 k16-20020ac257d0000000b004e9ad85aa09mr7874042lfo.68.1680289949152; 
 Fri, 31 Mar 2023 12:12:29 -0700 (PDT)
X-Google-Smtp-Source: AKy350ZTs7xrb3JbT2oC5qnyecTLJcHIrhwpbP+I6d+Wfo3Jaci9tWwy1Iq+Ij3x13faw8d7dCIp5A==
X-Received: by 2002:ac2:57d0:0:b0:4e9:ad85:aa09 with SMTP id
 k16-20020ac257d0000000b004e9ad85aa09mr7874032lfo.68.1680289948804; 
 Fri, 31 Mar 2023 12:12:28 -0700 (PDT)
Received: from [192.168.42.100] (83-90-141-187-cable.dk.customer.tdc.net.
 [83.90.141.187]) by smtp.gmail.com with ESMTPSA id
 v16-20020ac25610000000b004caf992bba9sm485353lfd.268.2023.03.31.12.12.27
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Fri, 31 Mar 2023 12:12:28 -0700 (PDT)
From: Jesper Dangaard Brouer <jbrouer@redhat.com>
X-Google-Original-From: Jesper Dangaard Brouer <brouer@redhat.com>
Message-ID: <3de525f4-096b-b0fe-aaf3-7992acb2451f@redhat.com>
Date: Fri, 31 Mar 2023 21:12:26 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.8.0
To: kernel test robot <lkp@intel.com>, bpf@vger.kernel.org,
 Stanislav Fomichev <sdf@google.com>, =?UTF-8?B?VG9rZSBIw7hpbGFuZC1Kw7hyZ2Vu?=
 =?UTF-8?Q?sen?= <toke@redhat.com>
References: <168027498690.3941176.99100635661990098.stgit@firesoul>
 <202304010239.Jw6bKkWC-lkp@intel.com>
In-Reply-To: <202304010239.Jw6bKkWC-lkp@intel.com>
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=redhat.com; 
 s=mimecast20190719; t=1680289954;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=673XRyizobae774kUu5nrXw20qs2InjIWxuBx9XJVCI=;
 b=YA8CPJAfXX3iX6HZBBvts/QFmSAPL5GmyagbbV+kEtphbdQMJH19SAHLJQvOxw+JJm6JH/
 fDXU+gcOxYRNKwqdwnPmRTJlWMyzK7YXWsmnCBW4ARWfZEfQCHCsYRtHoECM/kLYvYe58a
 hK3zWTqZIUsjRGP6JIJNPWnZ4xZQ2EA=
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com
 header.a=rsa-sha256 header.s=mimecast20190719 header.b=YA8CPJAf
Subject: Re: [Intel-wired-lan] [PATCH bpf V4 1/5] xdp: rss hash types
 representation
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
Cc: ast@kernel.org, edumazet@google.com, anthony.l.nguyen@intel.com,
 boon.leong.ong@intel.com, hawk@kernel.org, xdp-hints@xdp-project.net,
 daniel@iogearbox.net, john.fastabend@gmail.com, jesse.brandeburg@intel.com,
 intel-wired-lan@lists.osuosl.org, brouer@redhat.com, kuba@kernel.org,
 pabeni@redhat.com, martin.lau@kernel.org, larysa.zaremba@intel.com,
 oe-kbuild-all@lists.linux.dev, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org, tariqt@nvidia.com, yoong.siang.song@intel.com,
 davem@davemloft.net
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>


Hopefully addressed in V5.

I obviously need to change function signature for all driver xmo_rx_hash
calls in patch 1/5 to make this compile.  I kept the RSS type
implementations for each driver as separate patches as this is more
reasonable to review and handle.


On 31/03/2023 20.23, kernel test robot wrote:
>
[...]
> All errors (new ones prefixed by >>):
> 
>>> drivers/net/veth.c:1685:43: error: initialization of 'int (*)(const struct xdp_md *, u32 *, enum xdp_rss_hash_type *)' {aka 'int (*)(const struct xdp_md *, unsigned int *, enum xdp_rss_hash_type *)'} from incompatible pointer type 'int (*)(const struct xdp_md *, u32 *)' {aka 'int (*)(const struct xdp_md *, unsigned int *)'} [-Werror=incompatible-pointer-types]
>      1685 |         .xmo_rx_hash                    = veth_xdp_rx_hash,
>           |                                           ^~~~~~~~~~~~~~~~
>     drivers/net/veth.c:1685:43: note: (near initialization for 'veth_xdp_metadata_ops.xmo_rx_hash')
>     cc1: some warnings being treated as errors

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
