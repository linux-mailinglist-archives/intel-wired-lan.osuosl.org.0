Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id B5E6C1E3223
	for <lists+intel-wired-lan@lfdr.de>; Wed, 27 May 2020 00:13:24 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 77EE488575;
	Tue, 26 May 2020 22:13:23 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id uuqPZbtlqPpn; Tue, 26 May 2020 22:13:23 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 8332D885C8;
	Tue, 26 May 2020 22:13:22 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 2C8FE1BF2AE
 for <intel-wired-lan@lists.osuosl.org>; Tue, 26 May 2020 22:13:21 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 2835786920
 for <intel-wired-lan@lists.osuosl.org>; Tue, 26 May 2020 22:13:21 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id I9h-7fk3Xfgq for <intel-wired-lan@lists.osuosl.org>;
 Tue, 26 May 2020 22:13:20 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 5EAB58636D
 for <intel-wired-lan@lists.osuosl.org>; Tue, 26 May 2020 22:13:20 +0000 (UTC)
IronPort-SDR: xqtEjLCVOtiZ4GTVHC09Fk+HdF/n6Ec96xaUvmZ5yy24KDmV22z0Z3XILK3s/VOYCfkwxfZSj+
 g9X2zmdrMKXw==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 May 2020 15:13:19 -0700
IronPort-SDR: KhfnEXgFtaQT991OXiyoXpvb4aAsInGzZWQT2dEwgF5EH4lh/bbWGiIEMbnUjcGQ5XwTNEUoM2
 IVPfCcA7vY6g==
X-IronPort-AV: E=Sophos;i="5.73,439,1583222400"; d="scan'208";a="301870953"
Received: from tmcao-mobl.amr.corp.intel.com (HELO localhost)
 ([10.255.231.250])
 by fmsmga002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 May 2020 15:13:19 -0700
MIME-Version: 1.0
In-Reply-To: <20200525150248.37783-1-sasha.neftin@intel.com>
References: <20200525150248.37783-1-sasha.neftin@intel.com>
From: Andre Guedes <andre.guedes@intel.com>
To: Sasha Neftin <sasha.neftin@intel.com>, intel-wired-lan@lists.osuosl.org
Date: Tue, 26 May 2020 15:13:17 -0700
Message-ID: <159053119782.17101.888644900727677101@tmcao-mobl.amr.corp.intel.com>
User-Agent: alot/0.9
Subject: Re: [Intel-wired-lan] [PATCH v3 1/1] igc: Add initial EEE support
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

> IEEE802.3az-2010 Energy Efficient Ethernet has been
> approved as standard (September 2010) and the driver
> can enable and disable it via ethtool.
> Disable the feature by default on parts which support it.
> Add enable/disable eee options.
> tx-lpi, tx-timer and advertise not supported yet.
> 
> v1-v2:
> Rid of inverted logic and replace eee_disable boolean with
> eee_enable in device specification.
> Address community comments.
> 
> v2-v3:
> Remove pointless ret_val from _set_eee method
> Minor comment fix
> 
> Signed-off-by: Sasha Neftin <sasha.neftin@intel.com>

Reviewed-by: Andre Guedes <andre.guedes@intel.com>
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
