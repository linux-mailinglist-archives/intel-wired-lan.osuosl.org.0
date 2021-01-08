Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id D2A9F2EF742
	for <lists+intel-wired-lan@lfdr.de>; Fri,  8 Jan 2021 19:23:28 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 561EC2E14A;
	Fri,  8 Jan 2021 18:23:27 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ivx8JH48BBZt; Fri,  8 Jan 2021 18:23:27 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id C7B552E151;
	Fri,  8 Jan 2021 18:23:26 +0000 (UTC)
X-Original-To: intel-wired-lan@osuosl.org
Delivered-To: intel-wired-lan@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id B7D641BF9C1
 for <intel-wired-lan@osuosl.org>; Fri,  8 Jan 2021 18:23:25 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id B1CE3875FC
 for <intel-wired-lan@osuosl.org>; Fri,  8 Jan 2021 18:23:25 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id dnEvD1Jm6hub for <intel-wired-lan@osuosl.org>;
 Fri,  8 Jan 2021 18:23:24 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 47F38875F3
 for <intel-wired-lan@osuosl.org>; Fri,  8 Jan 2021 18:23:24 +0000 (UTC)
IronPort-SDR: LRgzJ2eDhVYDwunRTEROgIWpWhVPGsfrhTKMtsNLC0XZO2WYcsm6YHtiKrZ9YRPssJ3ugC52Ov
 RFl/9Gv7RV4w==
X-IronPort-AV: E=McAfee;i="6000,8403,9858"; a="262411843"
X-IronPort-AV: E=Sophos;i="5.79,332,1602572400"; d="scan'208";a="262411843"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Jan 2021 10:23:23 -0800
IronPort-SDR: iYK0TCqLLokpVPWS35JeZHubxoIZd6q1A4TAfQcfTP3LsP2QDYAiO27+E1Gp0p8WULgkG5ufAq
 Mf+2INISoZeA==
X-IronPort-AV: E=Sophos;i="5.79,332,1602572400"; d="scan'208";a="399060385"
Received: from jbrandeb-mobl4.amr.corp.intel.com (HELO localhost)
 ([10.209.68.23])
 by fmsmga002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Jan 2021 10:23:23 -0800
Date: Fri, 8 Jan 2021 10:23:22 -0800
From: Jesse Brandeburg <jesse.brandeburg@intel.com>
To: Jacob Keller <jacob.e.keller@intel.com>
Message-ID: <20210108102322.00004b93@intel.com>
In-Reply-To: <5badc441-6de9-54cf-2b72-d67572cbb105@intel.com>
References: <20210106215539.2103688-1-jesse.brandeburg@intel.com>
 <20210106215539.2103688-2-jesse.brandeburg@intel.com>
 <5badc441-6de9-54cf-2b72-d67572cbb105@intel.com>
X-Mailer: Claws Mail 3.12.0 (GTK+ 2.24.28; i686-w64-mingw32)
MIME-Version: 1.0
Subject: Re: [Intel-wired-lan] [PATCH net-next v1 1/2] net: core: count
 drops from GRO
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
Cc: intel-wired-lan@osuosl.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Jacob Keller wrote:

> >  	case GRO_DROP:
> > +		atomic_long_inc(&skb->dev->rx_dropped);
> >  		kfree_skb(skb);
> >  		break;
> 
> Would it makes sense to have this be a different stat? or is it really
> basically the same as the existing rx_dropped, so treating it
> differently wouldn't make much sense..

not sure, was hoping to get feedback here. More later in the thread...
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
