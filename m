Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 6CE3EABFBE2
	for <lists+intel-wired-lan@lfdr.de>; Wed, 21 May 2025 19:01:55 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 1BBDC40A69;
	Wed, 21 May 2025 17:01:54 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id iz17--72TMXI; Wed, 21 May 2025 17:01:53 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 7AC5540A81
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1747846913;
	bh=PWmX5o1KZHES75Hln8YX3lrBwYIMaAXXEFNBxe0jHFM=;
	h=Date:From:To:Cc:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=b8R0mImzyxg2bwYv9tBcE4OmufuHfQNfwBW61BDGMZZTGVfArh2hPYO0nH5M/78Gj
	 gM0cbzG2kLWxl+PnlikE1qS/vH5rX9rIvGqNYEHiFdMcw0G5YnYKViithzkX7GUQVj
	 rsSlZYqfN2XZpBLqMGdISYGOGJmkrXLqhSFiDbFa3vlqtEBhjJ/KG5M/46WQM1HH/7
	 defTgaIVJwj82gFPVVTqhzRgYQLksYHWaJYDm8U7GAfvZjnUmXw8TlyGFH/EE3YE5E
	 jM7nDgHwdIn7hpTCov/U8mMp2mq4mXqZA+s7R9S/Lxtd/2j9A+b0+knzmE5MjbbIm9
	 lfe/hmPpkcqSQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 7AC5540A81;
	Wed, 21 May 2025 17:01:53 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
 by lists1.osuosl.org (Postfix) with ESMTP id 9702361
 for <intel-wired-lan@lists.osuosl.org>; Wed, 21 May 2025 17:01:51 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 93A1440A62
 for <intel-wired-lan@lists.osuosl.org>; Wed, 21 May 2025 17:01:51 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id ECrqd7GdGHIC for <intel-wired-lan@lists.osuosl.org>;
 Wed, 21 May 2025 17:01:51 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2607:f8b0:4864:20::62e; helo=mail-pl1-x62e.google.com;
 envelope-from=stfomichev@gmail.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 0C18B40A5B
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 0C18B40A5B
Received: from mail-pl1-x62e.google.com (mail-pl1-x62e.google.com
 [IPv6:2607:f8b0:4864:20::62e])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 0C18B40A5B
 for <intel-wired-lan@lists.osuosl.org>; Wed, 21 May 2025 17:01:50 +0000 (UTC)
Received: by mail-pl1-x62e.google.com with SMTP id
 d9443c01a7336-232059c0b50so41124805ad.2
 for <intel-wired-lan@lists.osuosl.org>; Wed, 21 May 2025 10:01:50 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1747846910; x=1748451710;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
 :message-id:reply-to;
 bh=PWmX5o1KZHES75Hln8YX3lrBwYIMaAXXEFNBxe0jHFM=;
 b=mnAhm2nIVZ92Gf84X/jgKG5X1Xzz3antEj8LM7HUghvnctiLnpt+YfNoZUjvL/jZdp
 Rkx0/Mae6qlRPHgYcJrsIRzobKhzUvOi39Der0+3x9wyhwZ3sJJYFnu+dPACED8AFcKY
 IUu698julDc1jdOcGJS53DF/wnyT3/V2jUcgVtPQg43guRGpV+2H1Qz/TOQzlYh/D2H+
 OQtDw1CkpO/rwb9xNsnKEJt9CGXlp0Wa+ZUi8pFKEEW+FuRNjzE0J8ilCI9HiVwBVldq
 Q4AVeAHm29XBn7yU/AGhWbuVfbRroUNxb4hPQaYoic+UywiXa3kYpgqVXKYI0Gy5KKCo
 38vg==
X-Forwarded-Encrypted: i=1;
 AJvYcCVaJ3n2/hll73McMVWT9jIPbldxblm4si/37R3z8gpZkRkXpWQr/AZU+rZoEaHWp1OH+x/LX7wyHapVSLnsiTY=@lists.osuosl.org
X-Gm-Message-State: AOJu0YwAzPKhrspihuF8MweyH1LBwh9C68Si7cQx5ZxdpVwXiGKwgjv9
 crciqTnYtJc8c+SrGfJLKKyUzbcBB7SN3aN/QYga8quLvIneMLvViZQ=
X-Gm-Gg: ASbGncuJ66wPk3tGfG+oRIB1Rq7r0eu9hLz+LERcbwgyab2rrEx3h9+VpXR0Hl0QTzY
 l9guXZi8E23v/2VvdhRrjUJ8u8pntP/5lFv2nWxHYL7agr35r0xusiqSwNiJmgUGNmdGlOuCpG9
 51x+rVaXNJSOEJpQZP4StOX0bZinw05cDTjqFU+Zy+uUp8uNPicf4eFIEvIa/JZVWk5GHVmF9+J
 c95vY+ujxa/WhNws0tYplbKzEqh/9jdo9PWiOThHKxvIbdiLMDJ84dDaNa63Us/QTV/ekYFKix7
 ZadgRkF7+0OVPq14+eGNdbCZ2oxTfptAUSujaSnF+pd6UyD4OHcYZ4IatevNGPnt8fhf8IlnWzj
 5VRudh9XXD8DvMR3kSUdV4C0=
X-Google-Smtp-Source: AGHT+IG0Sa3DbuCkqkmdcG/fc0MxWlV6cSP48i9+QjTx97ZOfBSkfimF0N4vSUQyUW8Hx/YktfqF6A==
X-Received: by 2002:a17:902:ea0c:b0:22e:61b2:5eb6 with SMTP id
 d9443c01a7336-231de3030bemr301106515ad.15.1747846910234; 
 Wed, 21 May 2025 10:01:50 -0700 (PDT)
Received: from localhost (c-73-158-218-242.hsd1.ca.comcast.net.
 [73.158.218.242]) by smtp.gmail.com with UTF8SMTPSA id
 d9443c01a7336-231d4e988c3sm95414665ad.120.2025.05.21.10.01.49
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 21 May 2025 10:01:49 -0700 (PDT)
Date: Wed, 21 May 2025 10:01:48 -0700
From: Stanislav Fomichev <stfomichev@gmail.com>
To: "Loktionov, Aleksandr" <aleksandr.loktionov@intel.com>
Cc: "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 "davem@davemloft.net" <davem@davemloft.net>,
 "edumazet@google.com" <edumazet@google.com>,
 "kuba@kernel.org" <kuba@kernel.org>,
 "pabeni@redhat.com" <pabeni@redhat.com>,
 "skalluru@marvell.com" <skalluru@marvell.com>,
 "manishc@marvell.com" <manishc@marvell.com>,
 "andrew+netdev@lunn.ch" <andrew+netdev@lunn.ch>,
 "michael.chan@broadcom.com" <michael.chan@broadcom.com>,
 "pavan.chebbi@broadcom.com" <pavan.chebbi@broadcom.com>,
 "ajit.khaparde@broadcom.com" <ajit.khaparde@broadcom.com>,
 "sriharsha.basavapatna@broadcom.com" <sriharsha.basavapatna@broadcom.com>,
 "somnath.kotur@broadcom.com" <somnath.kotur@broadcom.com>,
 "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>,
 "Kitszel, Przemyslaw" <przemyslaw.kitszel@intel.com>,
 "tariqt@nvidia.com" <tariqt@nvidia.com>,
 "saeedm@nvidia.com" <saeedm@nvidia.com>,
 "louis.peens@corigine.com" <louis.peens@corigine.com>,
 "shshaikh@marvell.com" <shshaikh@marvell.com>,
 "GR-Linux-NIC-Dev@marvell.com" <GR-Linux-NIC-Dev@marvell.com>,
 "ecree.xilinx@gmail.com" <ecree.xilinx@gmail.com>,
 "horms@kernel.org" <horms@kernel.org>,
 "dsahern@kernel.org" <dsahern@kernel.org>,
 "ruanjinjie@huawei.com" <ruanjinjie@huawei.com>,
 "mheib@redhat.com" <mheib@redhat.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "linux-rdma@vger.kernel.org" <linux-rdma@vger.kernel.org>,
 "oss-drivers@corigine.com" <oss-drivers@corigine.com>,
 "linux-net-drivers@amd.com" <linux-net-drivers@amd.com>,
 "leon@kernel.org" <leon@kernel.org>
Message-ID: <aC4G_Pj118yoW-35@mini-arch>
References: <20250520203614.2693870-1-stfomichev@gmail.com>
 <20250520203614.2693870-2-stfomichev@gmail.com>
 <SJ0PR11MB58660E85F76E4A347197C768E59EA@SJ0PR11MB5866.namprd11.prod.outlook.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <SJ0PR11MB58660E85F76E4A347197C768E59EA@SJ0PR11MB5866.namprd11.prod.outlook.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1747846910; x=1748451710; darn=lists.osuosl.org;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
 bh=PWmX5o1KZHES75Hln8YX3lrBwYIMaAXXEFNBxe0jHFM=;
 b=E8kyVJjZ8y5ubAGYElQghuiUzjgkubCkOttHSF5F+LaTlka/bCJojw7ChAl+R2Y1Lg
 mmkPtDYC/9wuNSq+84yCeySJX1wzl4WqkqQSjYOTSvvXhadN1E6nqcb74u9ragZOAulL
 ZXL+wMYabSbOPuzDGyhgbuZl+iA0kulU+tKgkt5JXoNXS10cjcJVY7VhKt4sD6X6ISM+
 xbSPHz6yR1y7h/kLC2H61A1s5+balRAB9fV2R9RpUtuqVL+20TjbIrOioNpafy+rEuoE
 ZqdIQyDE4dlHYicTZ7ll0rsskaMhrFM+ikk5x5tjUDDek4mfIPbVOOBrbXu3bPUnVCVd
 OJOg==
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=gmail.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256
 header.s=20230601 header.b=E8kyVJjZ
Subject: Re: [Intel-wired-lan] [PATCH net-next 1/3] net: ASSERT_RTNL remove
 netif_set_real_num_{rx, tx}_queues
X-BeenThere: intel-wired-lan@osuosl.org
X-Mailman-Version: 2.1.30
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

On 05/21, Loktionov, Aleksandr wrote:
> 
> 
> > -----Original Message-----
> > From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf
> > Of Stanislav Fomichev
> > Sent: Tuesday, May 20, 2025 10:36 PM
> > To: netdev@vger.kernel.org
> > Cc: davem@davemloft.net; edumazet@google.com; kuba@kernel.org;
> > pabeni@redhat.com; skalluru@marvell.com; manishc@marvell.com;
> > andrew+netdev@lunn.ch; michael.chan@broadcom.com;
> > pavan.chebbi@broadcom.com; ajit.khaparde@broadcom.com;
> > sriharsha.basavapatna@broadcom.com; somnath.kotur@broadcom.com;
> > Nguyen, Anthony L <anthony.l.nguyen@intel.com>; Kitszel, Przemyslaw
> > <przemyslaw.kitszel@intel.com>; tariqt@nvidia.com; saeedm@nvidia.com;
> > louis.peens@corigine.com; shshaikh@marvell.com; GR-Linux-NIC-
> > Dev@marvell.com; ecree.xilinx@gmail.com; horms@kernel.org;
> > dsahern@kernel.org; ruanjinjie@huawei.com; mheib@redhat.com;
> > stfomichev@gmail.com; linux-kernel@vger.kernel.org; intel-wired-
> > lan@lists.osuosl.org; linux-rdma@vger.kernel.org; oss-
> > drivers@corigine.com; linux-net-drivers@amd.com; leon@kernel.org
> > Subject: [Intel-wired-lan] [PATCH net-next 1/3] net: ASSERT_RTNL
> > remove netif_set_real_num_{rx, tx}_queues
> > 
> Can you consider more explicit title like:
> net: remove redundant ASSERT_RTNL() in queue setup functions
> ?
> 
> > Existing netdev_ops_assert_locked takes care of asserting either
> > netdev lock or RTNL.
> > 
> I'd recommend rephrasing like:
> The existing netdev_ops_assert_locked() already asserts that either
> the RTNL lock or the per-device lock is held, making the explicit
> ASSERT_RTNL() redundant.

Sure, will do, thanks!
