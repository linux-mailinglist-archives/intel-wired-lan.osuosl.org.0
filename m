Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 1D32D266A31
	for <lists+intel-wired-lan@lfdr.de>; Fri, 11 Sep 2020 23:42:13 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id CC94487565;
	Fri, 11 Sep 2020 21:42:11 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id edSE8TZw-EqX; Fri, 11 Sep 2020 21:42:11 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 3F38587569;
	Fri, 11 Sep 2020 21:42:11 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id DA0621BF2F8
 for <intel-wired-lan@lists.osuosl.org>; Fri, 11 Sep 2020 21:42:09 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id D1AF48751D
 for <intel-wired-lan@lists.osuosl.org>; Fri, 11 Sep 2020 21:42:09 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Zm4b9XNF6poz for <intel-wired-lan@lists.osuosl.org>;
 Fri, 11 Sep 2020 21:42:09 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 582EB87514
 for <intel-wired-lan@lists.osuosl.org>; Fri, 11 Sep 2020 21:42:09 +0000 (UTC)
IronPort-SDR: Bx1JOKMyu0aSGg8mxH6hUXDbbHIjz1oTA9JuncFejCMEnHdyubmwpqqy4R98tYdf062nEIssfZ
 ma1asBX5TS1g==
X-IronPort-AV: E=McAfee;i="6000,8403,9741"; a="138368113"
X-IronPort-AV: E=Sophos;i="5.76,417,1592895600"; d="scan'208";a="138368113"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Sep 2020 14:42:08 -0700
IronPort-SDR: OPpjnZl/JVIgjJnhqJFeNR9d9vTtL1AKKqS5LvUH18SRMYMEGQPcV+bbjjb6ZINzDN/iZMv1cb
 szpNIvYExbWA==
X-IronPort-AV: E=Sophos;i="5.76,417,1592895600"; d="scan'208";a="450120794"
Received: from jbrandeb-mobl3.amr.corp.intel.com (HELO localhost)
 ([10.209.99.126])
 by orsmga004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Sep 2020 14:42:07 -0700
Date: Fri, 11 Sep 2020 14:42:07 -0700
From: Jesse Brandeburg <jesse.brandeburg@intel.com>
To: Edward Cree <ecree@solarflare.com>
Message-ID: <20200911144207.00005619@intel.com>
In-Reply-To: <227d2fe4-ddf8-89c9-b80b-142674c2cca0@solarflare.com>
References: <20200911012337.14015-1-jesse.brandeburg@intel.com>
 <20200911012337.14015-12-jesse.brandeburg@intel.com>
 <227d2fe4-ddf8-89c9-b80b-142674c2cca0@solarflare.com>
X-Mailer: Claws Mail 3.12.0 (GTK+ 2.24.28; i686-w64-mingw32)
MIME-Version: 1.0
Subject: Re: [Intel-wired-lan] [RFC PATCH net-next v1 11/11]
 drivers/net/ethernet: clean up mis-targeted comments
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
Cc: netdev@vger.kernel.org, intel-wired-lan@lists.osuosl.org
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Edward Cree wrote:
> On 11/09/2020 02:23, Jesse Brandeburg wrote:
> > + * @MC_CMD_PTP_IN_TRANSMIT_LENMAX: hack to get W=3D1 to compile

> I think I'd rather have a bogus warning than bogus kerneldocto suppress i=
t;
> =A0please drop this line (and encourage toolchain folks to figure out how=
 to
> =A0get kerneldoc to ignore macros it can't understand).
> Apart from that, the sfc and sfc/falcon parts LGTM.
> =

> -ed

Thanks Ed, I think I might just remove the /** on that function then
(removing it from kdoc processing), would that be acceptable in the
meantime? Of course I'd remove the line I added as well.

- Jesse

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
