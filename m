Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 95CF073A412
	for <lists+intel-wired-lan@lfdr.de>; Thu, 22 Jun 2023 16:59:49 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 3A7ED41923;
	Thu, 22 Jun 2023 14:59:48 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 3A7ED41923
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1687445988;
	bh=K4DrrBi/YmaOZLGC7bHmVaDBHRXDZmmcHULsAw+pE4c=;
	h=From:Date:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=IrWw3KVdhhmAaVLDV9C0j2MoXrV6KPZ3BDo63xylAB+L46imVAEK+SJEhF+sxGY7/
	 uonjMWm7nU+sqqsZiDcvr3iJlUW7jo+ttZtSh5usDhxw/LDu+hBqXd4thrnVopYb2B
	 1se5VK33/raPw9hZwwzsuwpYfIG0q9DbQGm+yw/lgrkjJ/b72F+TJHzJKr1HCJCRYh
	 Rh3dRXaQVpBFyFF6wZh3d7ibASBo25QX/+D4VY2hS9uEZ6HMR4fUIMEAc1jrY8KTwJ
	 76gTKkwWqQLsfBcWW6OnIdhGi1w3lKKgpMYK4mNh3bgWSU0mkBReSCsRB/FNZDBkWW
	 RRWnkCjbA7/Hg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id mIBmXWdLd52A; Thu, 22 Jun 2023 14:59:47 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 108B24010C;
	Thu, 22 Jun 2023 14:59:47 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 108B24010C
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id ADD4D1BF421
 for <intel-wired-lan@lists.osuosl.org>; Thu, 22 Jun 2023 07:55:09 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 83C3E400CC
 for <intel-wired-lan@lists.osuosl.org>; Thu, 22 Jun 2023 07:55:09 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 83C3E400CC
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id qe5Px8lSHTJA for <intel-wired-lan@lists.osuosl.org>;
 Thu, 22 Jun 2023 07:55:09 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org D3E1E400C7
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.133.124])
 by smtp2.osuosl.org (Postfix) with ESMTPS id D3E1E400C7
 for <intel-wired-lan@lists.osuosl.org>; Thu, 22 Jun 2023 07:55:08 +0000 (UTC)
Received: from mail-wr1-f71.google.com (mail-wr1-f71.google.com
 [209.85.221.71]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-278-IiMXMrIiNBW87p7HaDMOQQ-1; Thu, 22 Jun 2023 03:55:06 -0400
X-MC-Unique: IiMXMrIiNBW87p7HaDMOQQ-1
Received: by mail-wr1-f71.google.com with SMTP id
 ffacd0b85a97d-31273e0507dso1843807f8f.3
 for <intel-wired-lan@lists.osuosl.org>; Thu, 22 Jun 2023 00:55:05 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20221208; t=1687420505; x=1690012505;
 h=cc:to:subject:message-id:date:from:mime-version:x-gm-message-state
 :from:to:cc:subject:date:message-id:reply-to;
 bh=Eox6kzJ0KXGmAxPu1zCtO8SWj1o8YH/kpH0QF8X1TQs=;
 b=UCX9SpXUpzBneIeV7R+WaUQtzCA7ZLEgwE7uats873BzRUdMPRvXCjnZow+k2IAYXM
 u8ppnq+1+bPZj+4jhpMiBAcSo9FZCFbiRFTbzbjmUVFpo5hpzq/vR0BP1XSNJ55THexg
 KhYxsG8ukh20mcFl2Gn2bTqWYpjgrBk1SFIT8hNuRtGHbOjYtGAb5dyN5fSxglozuBtg
 iwIgecKWPUBwPFbe1XC3Uhd7kmPfft43exbXF+vsCNHuCUlGiHaN7agRrP0IMEMapDlU
 GcHtbIn3StSlfcyTVXGOk+fFvZCIeDtciLdiBu+wDk9v6qEtk8XZZ8KL6wzqK76vohDp
 3ltg==
X-Gm-Message-State: AC+VfDxf61B3kIwtMC8Wp5lHtI2KeKzoZx63/NR3clWNdwNeBU5GZN1+
 /mX1wLWFBEJnBTD3joLONCyDR7ptwc84re5sdC2A47HYWukeSSarA0Yjm0FMqsfHYFOPJK5IgSk
 bfwptaDDQXaeIg9YAfoYTGAHj5WrIeCA6ubuDRTTUuxGDdw==
X-Received: by 2002:a5d:590c:0:b0:30a:8995:1dbc with SMTP id
 v12-20020a5d590c000000b0030a89951dbcmr13481403wrd.26.1687420505046; 
 Thu, 22 Jun 2023 00:55:05 -0700 (PDT)
X-Google-Smtp-Source: ACHHUZ5XXdP5mBFYeXjHFqCUFXHfOsqZzMCP4KunAaLqWfIWum2C8ZQg8p8aPknYzd7pBcBBJ2gzkZCOOq3kQ/vNoxc=
X-Received: by 2002:a5d:590c:0:b0:30a:8995:1dbc with SMTP id
 v12-20020a5d590c000000b0030a89951dbcmr13481390wrd.26.1687420504759; Thu, 22
 Jun 2023 00:55:04 -0700 (PDT)
MIME-Version: 1.0
From: Vitaly Grinberg <vgrinber@redhat.com>
Date: Thu, 22 Jun 2023 10:54:54 +0300
Message-ID: <CACLnSDiBML3R_K5ncFsuritvid5nGsBLx5pGR2c9pR9L=qhPiQ@mail.gmail.com>
To: "Kubalewski, Arkadiusz" <arkadiusz.kubalewski@intel.com>
X-Mimecast-Spam-Score: 1
X-Mimecast-Originator: redhat.com
X-Mailman-Approved-At: Thu, 22 Jun 2023 14:59:38 +0000
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=redhat.com; 
 s=mimecast20190719; t=1687420507;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type;
 bh=Eox6kzJ0KXGmAxPu1zCtO8SWj1o8YH/kpH0QF8X1TQs=;
 b=AvjvZFGq1D7F7kUm268mcKadsIlbaY53/rkh4kIe+5SKdZhN7hAKdvXu2NWUL2Duh/3dCp
 x5PhTAYrIRGiM5SSFTg3GJC8cHwPbBQnP2gFizLH1+v5pEib3GKTt7gvXk6GOLUMTNq60T
 /UxeqN4VAShAnvCcGJTjAj0D2aq5f/M=
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com
 header.a=rsa-sha256 header.s=mimecast20190719 header.b=AvjvZFGq
Subject: Re: [Intel-wired-lan] [RFC PATCH v8 00/10] Create common DPLL
 configuration API
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
Cc: geert+renesas@glider.be, linux-doc@vger.kernel.org, razor@blackwall.org,
 phil@nwl.cc, jesse.brandeburg@intel.com, edumazet@google.com,
 Benjamin Tissoires <benjamin.tissoires@redhat.com>, anthony.l.nguyen@intel.com,
 netdev@vger.kernel.org, linux-clk@vger.kernel.org, lucien.xin@gmail.com,
 leon@kernel.org, corbet@lwn.net, linux-rdma@vger.kernel.org,
 masahiroy@kernel.org, Michael Tsirkin <mst@redhat.com>,
 Javier Martinez Canillas <javierm@redhat.com>, vadfed@meta.com,
 intel-wired-lan@lists.osuosl.org, kuba@kernel.org, vadfed@fb.com,
 Paolo Abeni <pabeni@redhat.com>, ricardo.canuelo@collabora.com,
 jiri@resnulli.us, arnd@arndb.de, idosch@nvidia.com, richardcochran@gmail.com,
 claudiajkang@gmail.com, kuniyu@amazon.com, jacek.lawrynowicz@linux.intel.com,
 liuhangbin@gmail.com, David Airlie <airlied@redhat.com>,
 nicolas.dichtel@6wind.com, linux-arm-kernel@lists.infradead.org,
 axboe@kernel.dk, sj@kernel.org, vadim.fedorenko@linux.dev, linux@zary.sk,
 gregkh@linuxfoundation.org, ogabbay@kernel.org, nipun.gupta@amd.com,
 linux-kernel@vger.kernel.org, andy.ren@getcruise.com, tzimmermann@suse.de,
 jonathan.lemon@gmail.com, saeedm@nvidia.com, davem@davemloft.net,
 milena.olech@intel.com, hkallweit1@gmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Hi,
Could it be possible to add PPS DPLL phase offset to the netlink API?
We are relying on it in the E810-based grandmaster implementation.
Thanks,
Vitaly

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
