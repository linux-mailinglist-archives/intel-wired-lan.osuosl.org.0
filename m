Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 527DB2A5AA1
	for <lists+intel-wired-lan@lfdr.de>; Wed,  4 Nov 2020 00:41:07 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id ED6728659E;
	Tue,  3 Nov 2020 23:41:05 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id jBaIBX_OO5w6; Tue,  3 Nov 2020 23:41:04 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 9866C86640;
	Tue,  3 Nov 2020 23:41:04 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 98F931BF37A
 for <intel-wired-lan@lists.osuosl.org>; Tue,  3 Nov 2020 23:41:02 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 950DE87547
 for <intel-wired-lan@lists.osuosl.org>; Tue,  3 Nov 2020 23:41:02 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id YlCSHu+ubjX2 for <intel-wired-lan@lists.osuosl.org>;
 Tue,  3 Nov 2020 23:41:02 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 0A99C87545
 for <intel-wired-lan@lists.osuosl.org>; Tue,  3 Nov 2020 23:41:02 +0000 (UTC)
IronPort-SDR: IykJ72RgnKYkkF6AZWh7IZUyh24t8L39ESxiJ+qEgJAzlJGf7xCTGTGuXkwzgIv/O1BZOeRRRf
 yJUAD0wrdyOQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9794"; a="169278047"
X-IronPort-AV: E=Sophos;i="5.77,449,1596524400"; d="scan'208";a="169278047"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Nov 2020 15:41:01 -0800
IronPort-SDR: VUQGqGniGFpfVcgPlol5w4cBWPIjWOCGq5xaqMzXIiLetx86QJ68YNTyG03voUo4IIFO5jMwKa
 TdnYTnjU6EbA==
X-IronPort-AV: E=Sophos;i="5.77,449,1596524400"; d="scan'208";a="305975378"
Received: from anemani-mobl2.amr.corp.intel.com (HELO localhost)
 ([10.254.38.187])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Nov 2020 15:41:00 -0800
MIME-Version: 1.0
In-Reply-To: <20201102183007.GL6427@ranger.igk.intel.com>
References: <20201030210351.46482-1-andre.guedes@intel.com>
 <20201030210351.46482-10-andre.guedes@intel.com>
 <20201102183007.GL6427@ranger.igk.intel.com>
From: Andre Guedes <andre.guedes@intel.com>
To: Maciej Fijalkowski <maciej.fijalkowski@intel.com>
Date: Tue, 03 Nov 2020 15:41:00 -0800
Message-ID: <160444686030.10323.16059007261881463636@anemani-mobl2.amr.corp.intel.com>
User-Agent: alot/0.9.1
Subject: Re: [Intel-wired-lan] [PATCH v3 9/9] igc: Add support for
 XDP_REDIRECT action
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Quoting Maciej Fijalkowski (2020-11-02 10:30:07)
> On Fri, Oct 30, 2020 at 02:03:51PM -0700, Andre Guedes wrote:
> > This patch adds support for the XDP_REDIRECT action which enables XDP
> > programs to redirect packets arriving at I225 NIC. It also implements
> > the ndo_xdp_xmit ops, enabling the igc driver to transmit packets
> > forwarded to it by xdp programs running on other interfaces.
> > 
> > The patch tweaks the driver's page counting scheme (as described in
> > '8ce29c679a6e i40e: tweak page counting for XDP_REDIRECT' and
> > implemented by other Intel drivers) in order to properly support
> > XDP_REDIRECT action.
> > 
> > This patch has been tested with the sample apps "xdp_redirect_cpu" and
> > "xdp_redirect_map" located in samples/bpf/.
> 
> Did you test in a way that the igc interface was the second interface for
> redirect samples and you checked that tx happened?

I tested both ways with xdp_redirect_map i.e. igc interface as the IFNAME_IN
and as the IFNAME_OUT arguments.
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
