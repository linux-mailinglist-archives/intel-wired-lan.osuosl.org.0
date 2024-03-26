Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id F235988CC01
	for <lists+intel-wired-lan@lfdr.de>; Tue, 26 Mar 2024 19:30:36 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 24A2E60820;
	Tue, 26 Mar 2024 18:30:35 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id PPAPES1MaABh; Tue, 26 Mar 2024 18:30:34 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 5E84960613
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1711477834;
	bh=QhxmfxblwX/FGmQaoQOO5EDZYe8wiAfvIozDi8CxlmI=;
	h=From:To:In-Reply-To:References:Date:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=EFn3m63LnIjagQcVi/j4PioJbp1rgkcNq4iqCPZDNCjogg+R8qe14mAMHtWLSI6io
	 l0gNZMqEsiPHBtew5TgjSmDYrcv+Elbf58Z/03aSQWqCgS3MAIO8a1mw+Tos80BUk7
	 GpgcMwdGobSAOUB8yjv4Jj6nkrzsNWlc6lnlmjwA32EgUG/u+YVhXI06/BzPIBDAa3
	 lZrIySWPrXhKTyqE9BaztqfyI4T5HutpSZYX8SDHkrRM9sgIYNijSjOYOyTQ2Sk/Cc
	 BnEWiARmFK4ud0+39lx3wCEesulCcFU8s1bVic0KRYVurV3KaemD9yUC3ur2vG/KYb
	 R+3QdrXkCrn8A==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 5E84960613;
	Tue, 26 Mar 2024 18:30:34 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 9EDF31BF2B9
 for <intel-wired-lan@lists.osuosl.org>; Tue, 26 Mar 2024 18:30:32 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 87BB64013C
 for <intel-wired-lan@lists.osuosl.org>; Tue, 26 Mar 2024 18:30:32 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id OVliKw5MlexW for <intel-wired-lan@lists.osuosl.org>;
 Tue, 26 Mar 2024 18:30:32 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.13;
 helo=mgamail.intel.com; envelope-from=vinicius.gomes@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org B5726400FE
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org B5726400FE
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.13])
 by smtp2.osuosl.org (Postfix) with ESMTPS id B5726400FE
 for <intel-wired-lan@lists.osuosl.org>; Tue, 26 Mar 2024 18:30:31 +0000 (UTC)
X-CSE-ConnectionGUID: VwwE7LkuQFqZaSfhqanXOg==
X-CSE-MsgGUID: gVL3Op2TQOWw4vm8pWonow==
X-IronPort-AV: E=McAfee;i="6600,9927,11025"; a="17692505"
X-IronPort-AV: E=Sophos;i="6.07,156,1708416000"; d="scan'208";a="17692505"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by orvoesa105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Mar 2024 11:30:30 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,156,1708416000"; d="scan'208";a="20697374"
Received: from unknown (HELO vcostago-mobl3) ([10.124.221.236])
 by ORVIESA003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Mar 2024 11:30:29 -0700
From: Vinicius Costa Gomes <vinicius.gomes@intel.com>
To: "Song, Yoong Siang" <yoong.siang.song@intel.com>, "Brandeburg, Jesse"
 <jesse.brandeburg@intel.com>, "Nguyen, Anthony L"
 <anthony.l.nguyen@intel.com>, "David S . Miller" <davem@davemloft.net>,
 Eric Dumazet <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>, Paolo
 Abeni <pabeni@redhat.com>, Richard Cochran <richardcochran@gmail.com>,
 Alexei
 Starovoitov <ast@kernel.org>, Daniel Borkmann <daniel@iogearbox.net>,
 Jesper Dangaard Brouer <hawk@kernel.org>, John Fastabend
 <john.fastabend@gmail.com>, Stanislav Fomichev <sdf@google.com>, "Bezdeka,
 Florian" <florian.bezdeka@siemens.com>, Kurt Kanzenbach
 <kurt@linutronix.de>, "Fijalkowski, Maciej" <maciej.fijalkowski@intel.com>
In-Reply-To: <PH0PR11MB58308AF32C9678FA550F38BCD8352@PH0PR11MB5830.namprd11.prod.outlook.com>
References: <20240325020928.1987947-1-yoong.siang.song@intel.com>
 <87h6gtpvyn.fsf@intel.com>
 <PH0PR11MB58308AF32C9678FA550F38BCD8352@PH0PR11MB5830.namprd11.prod.outlook.com>
Date: Tue, 26 Mar 2024 11:30:27 -0700
Message-ID: <871q7wq20s.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1711477832; x=1743013832;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=uBLkN0mAj3ZSbr4KU4lSaYj97mBcP/vKRcrn/2cfNJo=;
 b=IFWbKjt7BfKs9XNEyeSRopq3CCfnnPDmxj5VX5Xiw++ZwP8dgmXdrrWV
 Yi8pRYrh/puOv2/BdOY4jWS2Eu5tgwRnp4at/i4fEscVPKg473BSc7Zw3
 qu/9nRnkQT3ICigsxHqbTbdGDXYXLSKA6ILuffPnvIEWM+R3AR7RsQV6c
 Y6cPgOL/TCe+2+IooWEKkHaYMvShWWP6sIdY06mK10IVgrDJzNh/+gs44
 jHvk20Mt8vEwTbG7571kEzTRGKx4nHGbX+HJZOQmSdTmR5v80e9QuuXE0
 VO1gwaz9m6pCtkrn53Xe8CFkeWAdxQaGnpuxaxw4ZLuSjjuUKqkqCffEu
 g==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=IFWbKjt7
Subject: Re: [Intel-wired-lan] [PATCH iwl-next,
 v4 1/1] igc: Add Tx hardware timestamp request for AF_XDP zero-copy
 packet
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
Cc: "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 "bpf@vger.kernel.org" <bpf@vger.kernel.org>,
 "xdp-hints@xdp-project.net" <xdp-hints@xdp-project.net>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

"Song, Yoong Siang" <yoong.siang.song@intel.com> writes:

>>
>>More a question: you are potentially triggering an interrupt from
>>igc_ptp_clear_tx_tstamp() (igc_xsk_wakeup()) which can be called from
>>igc_down(). So, how does it work when there's a pending timestamp and
>>you remove the igc module? (example of a situation that it might be
>>problematic).
>
> Hi Vinicius,
>
> Thanks for reviewing the patch.
>
> There is test_bit(__IGC_DOWN, &adapter->state) checking in
> igc_sxk_wakeup(). Since igc_down() will set __IGC_DOWN before
> call into igc_ptp_suspend(), so I believe the checking in igc_sxk_wakeup()
> should be enough to prevent the situation that you mentioned.
>

Oh, I missed that one, sorry. Then:

Acked-by: Vinicius Costa Gomes <vinicius.gomes@intel.com>


Cheers,
-- 
Vinicius
