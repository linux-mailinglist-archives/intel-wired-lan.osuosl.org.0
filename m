Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 1517C179D81
	for <lists+intel-wired-lan@lfdr.de>; Thu,  5 Mar 2020 02:43:01 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id B812E85E5C;
	Thu,  5 Mar 2020 01:42:59 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id kmiXAliM8UzQ; Thu,  5 Mar 2020 01:42:59 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id CCA1285E06;
	Thu,  5 Mar 2020 01:42:58 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 21E3A1BF3BC
 for <intel-wired-lan@lists.osuosl.org>; Thu,  5 Mar 2020 01:42:38 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 1490085CC3
 for <intel-wired-lan@lists.osuosl.org>; Thu,  5 Mar 2020 01:42:38 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id HmXvkh6lFeet for <intel-wired-lan@lists.osuosl.org>;
 Thu,  5 Mar 2020 01:42:37 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 579FE85C20
 for <intel-wired-lan@lists.osuosl.org>; Thu,  5 Mar 2020 01:42:37 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by orsmga103.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 04 Mar 2020 17:42:36 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,516,1574150400"; d="scan'208";a="441213515"
Received: from orsmsx101.amr.corp.intel.com ([10.22.225.128])
 by fmsmga006.fm.intel.com with ESMTP; 04 Mar 2020 17:42:36 -0800
Received: from orsmsx115.amr.corp.intel.com (10.22.240.11) by
 ORSMSX101.amr.corp.intel.com (10.22.225.128) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Wed, 4 Mar 2020 17:42:35 -0800
Received: from orsmsx103.amr.corp.intel.com ([169.254.5.43]) by
 ORSMSX115.amr.corp.intel.com ([169.254.4.100]) with mapi id 14.03.0439.000;
 Wed, 4 Mar 2020 17:42:35 -0800
From: "Brown, Aaron F" <aaron.f.brown@intel.com>
To: "Guedes, Andre" <andre.guedes@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH] igc: Fix overwrites when dumping
 registers
Thread-Index: AQHV8cILN+Ka5+xSEke0maEx5hpZ5qg5OwAg
Date: Thu, 5 Mar 2020 01:42:34 +0000
Message-ID: <309B89C4C689E141A5FF6A0C5FB2118B972014AE@ORSMSX103.amr.corp.intel.com>
References: <20200228081957.61782-1-andre.guedes@intel.com>
In-Reply-To: <20200228081957.61782-1-andre.guedes@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-version: 11.2.0.6
dlp-reaction: no-action
x-originating-ip: [10.22.254.139]
MIME-Version: 1.0
Subject: Re: [Intel-wired-lan] [PATCH] igc: Fix overwrites when dumping
 registers
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

> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of
> Andre Guedes
> Sent: Friday, February 28, 2020 12:20 AM
> To: intel-wired-lan@lists.osuosl.org
> Subject: [Intel-wired-lan] [PATCH] igc: Fix overwrites when dumping
> registers
> 
> This patch fixes some register overwriting when dumping registers via
> ethtool.
> 
> We have a total of 16 RAL registers, starting at offset 139. So RAH
> offset should be 139 + 16 = 155, not 145. As result some RAL registers
> are overwritten. Likewise, RAH registers are also overwritten by TDBAL,
> TDBAH, TDLEN, and TDH registers.
> 
> To fix this bug while preserving the ABI, this patch re-writes RAL and
> RAH registers at the end of 'regs_buff' and bumps regs->version. It also
> removes some pointless comments in the middle of igc_set_regs().
> 
> Signed-off-by: Andre Guedes <andre.guedes@intel.com>
> ---
>  drivers/net/ethernet/intel/igc/igc_ethtool.c | 11 ++++++++++-
>  1 file changed, 10 insertions(+), 1 deletion(-)
> 

Tested-by: Aaron Brown <aaron.f.brown@intel.com>
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
