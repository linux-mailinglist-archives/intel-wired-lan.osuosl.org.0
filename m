Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 358B36D3D0F
	for <lists+intel-wired-lan@lfdr.de>; Mon,  3 Apr 2023 08:01:45 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id B3E0660B0F;
	Mon,  3 Apr 2023 06:01:43 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org B3E0660B0F
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1680501703;
	bh=ysHaYBM4Mo36HvCHIAJabmRm90/uupAPHQ7a6BCq0wM=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=11nH6cjT2o7LP62PbN20ojGS8LTKEwgaeK/7LMnceMIYMSsHcIvJC7n5EQFNJ2M5Z
	 mL509crj1K1XYR8dvSFH0AkfTtIF9Qq8aAdRhhl8PA7u5mngPCcuhelJXPhUwQdQ99
	 HHdnqMChNPgRbl+T+eiaz42fWJyFo/SYyA2y2HSxZMKyHhFoy+k6209gfDjd/0NH5d
	 IrXsMljGEooKIKrViBUikX1kcQuXglVHuL8AaBYxHk/+0MlMqmkFRvvKAaHOfs5tZf
	 0xiO8ciBjcktc1X343w8PY0Ehzd0VT/quN8lF02o8Zn93N91uqkfEr+pZsMRMAHZ1H
	 omp7o87UV5ItQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id aFnOCZaIgmFf; Mon,  3 Apr 2023 06:01:43 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id BDB3D60B00;
	Mon,  3 Apr 2023 06:01:42 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org BDB3D60B00
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id B1F681BF395
 for <intel-wired-lan@lists.osuosl.org>; Mon,  3 Apr 2023 06:01:37 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 88B3481CAD
 for <intel-wired-lan@lists.osuosl.org>; Mon,  3 Apr 2023 06:01:37 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 88B3481CAD
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id IKlA9HmfI9Lk for <intel-wired-lan@lists.osuosl.org>;
 Mon,  3 Apr 2023 06:01:36 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org A66ED81C40
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by smtp1.osuosl.org (Postfix) with ESMTPS id A66ED81C40
 for <intel-wired-lan@lists.osuosl.org>; Mon,  3 Apr 2023 06:01:36 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10668"; a="428105223"
X-IronPort-AV: E=Sophos;i="5.98,314,1673942400"; d="scan'208";a="428105223"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Apr 2023 23:01:35 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10668"; a="750380410"
X-IronPort-AV: E=Sophos;i="5.98,314,1673942400"; d="scan'208";a="750380410"
Received: from unknown (HELO localhost.localdomain) ([10.237.112.144])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Apr 2023 23:01:34 -0700
Date: Mon, 3 Apr 2023 08:01:26 +0200
From: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
To: Simon Horman <simon.horman@corigine.com>
Message-ID: <ZCprtqPDE8Nun2jw@localhost.localdomain>
References: <20230331105747.89612-1-michal.swiatkowski@linux.intel.com>
 <20230331105747.89612-5-michal.swiatkowski@linux.intel.com>
 <ZCfzsSmsrbRIBtsy@corigine.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <ZCfzsSmsrbRIBtsy@corigine.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1680501696; x=1712037696;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=ot7U9s3fjbOvnQ6eNg6mimuRyfAMaus3isrVh+SmT3g=;
 b=WLbBtRwqHddLhNEVVJPHRMis16EtCUbR9fWfqOeq7Eqb0/KJwN6iBfcO
 euQWSQC7O48ZtpCyVGXd0n9hLeiwi3PAT0p0QdQuGJQm8kggKnHatUv4L
 V16OrhF8NWBVAwIkzBOb84xONp41znyAi7m2AOPhTRrp5xDznp86rcJzi
 HHf2o/sUNQ25wgGByN/uYlcdzQCq3RcEqXKo4JOnpPcBDnf4pnvqh2182
 wq4PLDZNOXadc9/LZuXRJ0MW5nDB+5l4yat6HJLh7VknupFCI50DTBNmP
 N4lt3VbMHNgk+zyGU09qR04bP8msTtY/49ICxWCISk5mfTvNJsRCTJ+Ko
 A==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=WLbBtRwq
Subject: Re: [Intel-wired-lan] [PATCH net-next 4/4] ice: use src VSI instead
 of src MAC in slow-path
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Sat, Apr 01, 2023 at 11:04:49AM +0200, Simon Horman wrote:
> On Fri, Mar 31, 2023 at 12:57:47PM +0200, Michal Swiatkowski wrote:
> > The use of a source  MAC to direct packets from the VF to the
> > corresponding port representor is only ok if there is only one
> > MAC on a VF. To support this functionality when the number
> > of MACs on a VF is greater, it is necessary to match a source
> > VSI instead of a source MAC.
> > 
> > Let's use the new switch API that allows matching on metadata.
> > 
> > If MAC isn't used in match criteria there is no need to handle adding
> > rule after virtchnl command. Instead add new rule while port representor
> > is being configured.
> > 
> > Remove rule_added field, checking for sp_rule can be used instead.
> > Remove also checking for switchdev running in deleting rule as it can be
> > call from unroll context when running flag isn't set. Checking for
> > sp_rule cover both context (with and without running flag).
> > 
> > Rules are added in eswitch configuration flow, so there is no need to
> > have replay function.
> > 
> > Signed-off-by: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
> > Reviewed-by: Piotr Raczynski <piotr.raczynski@intel.com>
> 
> Reviewed-by: Simon Horman <simon.horman@corigine.com>
> 
> ...
> 
> > diff --git a/drivers/net/ethernet/intel/ice/ice_protocol_type.h b/drivers/net/ethernet/intel/ice/ice_protocol_type.h
> > index 20f66be9ba5f..1b739e096d27 100644
> > --- a/drivers/net/ethernet/intel/ice/ice_protocol_type.h
> > +++ b/drivers/net/ethernet/intel/ice/ice_protocol_type.h
> > @@ -256,7 +256,9 @@ struct ice_nvgre_hdr {
> >   * +-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+
> >   *
> >   * Source VSI = Source VSI of packet loopbacked in switch (for egress) (10b).
> > - *
> > + */
> > +#define ICE_MDID_SOURCE_VSI_MASK 0x3ff
> 
> nit: GENMASK might be appropriate here.
> 

Thanks for the review, I will fix it.

> > +/*
> >   * MDID 20
> >   * +-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+
> >   * |A|B|C|D|E|F|R|R|G|H|I|J|K|L|M|N|
> 
> ...
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
