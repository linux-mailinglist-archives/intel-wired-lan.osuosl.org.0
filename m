Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 32210927F56
	for <lists+intel-wired-lan@lfdr.de>; Fri,  5 Jul 2024 02:24:48 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 5DCCE4094C;
	Fri,  5 Jul 2024 00:24:46 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id i4Ih7TXjVT39; Fri,  5 Jul 2024 00:24:45 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org DF1DE4095A
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1720139085;
	bh=tGvHGf2Z8imagDJuNZWaXDrTl/rMftD/XiGUJZmDUCQ=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=CCxBQJb+ylybxGydcB0nA8b0k0fMP+JRnlSMiX0Mz1FAoSlSY623Xc9VptZdiNJNk
	 tiG9zU2LBOyyfyryit+EKos7F7BxhqEoEb8EfqC9Wkl/dMeatwDS3Tk68Yw3ahnCTp
	 twHmCkMBmfP2pu8VHtjUKln8D3LAAZ10+xGSaSyKG9l7WvALHDtua6OjmHA/eMrfuK
	 R3SRwh1cMo/VezTPQaafm6YgoQceOY9xJvWzk2v88SZNCKRYlLejaw4zAU8JGb1uf+
	 RKfnnCoz1txM/qode4O6QfFi8cl0tiZE0iIC4ySgdWvDUDMn7tb4zoiA6sLEiFSDgu
	 484DDEw58Jrcw==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id DF1DE4095A;
	Fri,  5 Jul 2024 00:24:44 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 0E74F1BF2BD
 for <intel-wired-lan@lists.osuosl.org>; Fri,  5 Jul 2024 00:24:43 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id ED63C4094B
 for <intel-wired-lan@lists.osuosl.org>; Fri,  5 Jul 2024 00:24:42 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id bdBO2FvGnQ_L for <intel-wired-lan@lists.osuosl.org>;
 Fri,  5 Jul 2024 00:24:41 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.8;
 helo=mgamail.intel.com; envelope-from=lkp@intel.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 916C340949
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 916C340949
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 916C340949
 for <intel-wired-lan@lists.osuosl.org>; Fri,  5 Jul 2024 00:24:41 +0000 (UTC)
X-CSE-ConnectionGUID: 9cs4+uC1R/CJrHtBoy6yqg==
X-CSE-MsgGUID: AwaAh/y+Q7abX6/jVEHLxw==
X-IronPort-AV: E=McAfee;i="6700,10204,11123"; a="34966791"
X-IronPort-AV: E=Sophos;i="6.09,183,1716274800"; d="scan'208";a="34966791"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Jul 2024 17:24:41 -0700
X-CSE-ConnectionGUID: tUE5TypWSZehOIoWstmt6Q==
X-CSE-MsgGUID: UtUTH6htRceS04V0IsWpYg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.09,183,1716274800"; d="scan'208";a="47158352"
Received: from lkp-server01.sh.intel.com (HELO 68891e0c336b) ([10.239.97.150])
 by orviesa006.jf.intel.com with ESMTP; 04 Jul 2024 17:24:37 -0700
Received: from kbuild by 68891e0c336b with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1sPWkc-000Rgq-1f;
 Fri, 05 Jul 2024 00:24:34 +0000
Date: Fri, 5 Jul 2024 08:23:53 +0800
From: kernel test robot <lkp@intel.com>
To: Mateusz Polchlopek <mateusz.polchlopek@intel.com>,
 intel-wired-lan@lists.osuosl.org
Message-ID: <202407050857.OSYEyokn-lkp@intel.com>
References: <20240703125922.5625-4-mateusz.polchlopek@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20240703125922.5625-4-mateusz.polchlopek@intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1720139082; x=1751675082;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=jMgU/ldtR+ELFwjG824hgDWZhrXbeGkg9FUM7GIABp0=;
 b=bJqFuOe/y7i0KIl9m9Nd9VpHkr/E1ABalWF5V6QLD5NIHFkil9SxF4YU
 tqmtxJ8Oc9sf+KZ9Gp2ZqlfoeEb/CO2xxuMnLN1/iE/kUXu1JDdGMSXbj
 WmnN05u+fiFusQTvVoZAEHy0KN2xuVHq3ds3Ljr4UyhqlB34BUYrg0WH1
 4GHgQBuYWqjUGPNJs4wmTfkUqvW3Ez+y1DJla/45xTBCz3J8HrNXlMUwA
 g9UD0JEtdAqea8ZNi4isaYjGfeZUthgk06qPVQlNQ7f4zqd6X58H9tE+f
 VqSfqhsEnZveC7jdA6biu8MReb31GAQhHvNUIHzaHokTFIEOjEwxkZsHH
 w==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=bJqFuOe/
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v1 3/6] ice: add Tx hang
 devlink health reporter
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
Cc: Przemek Kitszel <przemyslaw.kitszel@intel.com>, willemb@google.com,
 Wojciech Drewek <wojciech.drewek@intel.com>, dwaipayanray1@gmail.com,
 oe-kbuild-all@lists.linux.dev, linux-kernel@vger.kernel.org, apw@canonical.com,
 edumazet@google.com, netdev@vger.kernel.org,
 Mateusz Polchlopek <mateusz.polchlopek@intel.com>, joe@perches.com,
 lukas.bulwahn@gmail.com, akpm@linux-foundation.org,
 Igor Bagnucki <igor.bagnucki@intel.com>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Hi Mateusz,

kernel test robot noticed the following build warnings:

[auto build test WARNING on tnguy-next-queue/dev-queue]

url:    https://github.com/intel-lab-lkp/linux/commits/Mateusz-Polchlopek/checkpatch-don-t-complain-on-_Generic-use/20240704-184910
base:   https://git.kernel.org/pub/scm/linux/kernel/git/tnguy/next-queue.git dev-queue
patch link:    https://lore.kernel.org/r/20240703125922.5625-4-mateusz.polchlopek%40intel.com
patch subject: [Intel-wired-lan] [PATCH iwl-next v1 3/6] ice: add Tx hang devlink health reporter
config: i386-allmodconfig (https://download.01.org/0day-ci/archive/20240705/202407050857.OSYEyokn-lkp@intel.com/config)
compiler: gcc-13 (Ubuntu 13.2.0-4ubuntu3) 13.2.0
reproduce (this is a W=1 build): (https://download.01.org/0day-ci/archive/20240705/202407050857.OSYEyokn-lkp@intel.com/reproduce)

If you fix the issue in a separate patch/commit (i.e. not just a new version of
the same patch/commit), kindly add following tags
| Reported-by: kernel test robot <lkp@intel.com>
| Closes: https://lore.kernel.org/oe-kbuild-all/202407050857.OSYEyokn-lkp@intel.com/

All warnings (new ones prefixed by >>):

   drivers/net/ethernet/intel/ice/devlink/devlink_health.c: In function 'ice_tx_hang_reporter_dump':
>> drivers/net/ethernet/intel/ice/devlink/devlink_health.c:76:43: warning: cast to pointer from integer of different size [-Wint-to-pointer-cast]
      76 |         ice_fmsg_put_ptr(fmsg, "dma-ptr", (void *)event->tx_ring->dma);
         |                                           ^


vim +76 drivers/net/ethernet/intel/ice/devlink/devlink_health.c

    60	
    61	static int ice_tx_hang_reporter_dump(struct devlink_health_reporter *reporter,
    62					     struct devlink_fmsg *fmsg, void *priv_ctx,
    63					     struct netlink_ext_ack *extack)
    64	{
    65		struct ice_tx_hang_event *event = priv_ctx;
    66	
    67		devlink_fmsg_obj_nest_start(fmsg);
    68		ICE_DEVLINK_FMSG_PUT_FIELD(fmsg, event, head);
    69		ICE_DEVLINK_FMSG_PUT_FIELD(fmsg, event, intr);
    70		ICE_DEVLINK_FMSG_PUT_FIELD(fmsg, event, vsi_num);
    71		ICE_DEVLINK_FMSG_PUT_FIELD(fmsg, event, queue);
    72		ICE_DEVLINK_FMSG_PUT_FIELD(fmsg, event, next_to_clean);
    73		ICE_DEVLINK_FMSG_PUT_FIELD(fmsg, event, next_to_use);
    74		devlink_fmsg_put(fmsg, "irq-mapping", event->tx_ring->q_vector->name);
    75		ice_fmsg_put_ptr(fmsg, "desc-ptr", event->tx_ring->desc);
  > 76		ice_fmsg_put_ptr(fmsg, "dma-ptr", (void *)event->tx_ring->dma);
    77		devlink_fmsg_binary_pair_put(fmsg, "desc", event->tx_ring->desc,
    78					     size_mul(event->tx_ring->count,
    79						      sizeof(struct ice_tx_desc)));
    80		devlink_fmsg_obj_nest_end(fmsg);
    81	
    82		return 0;
    83	}
    84	

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
