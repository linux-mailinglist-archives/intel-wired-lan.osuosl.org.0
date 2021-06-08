Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 7E2C93A07D5
	for <lists+intel-wired-lan@lfdr.de>; Wed,  9 Jun 2021 01:36:36 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 2275C83189;
	Tue,  8 Jun 2021 23:36:35 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id aodmk47HyD7k; Tue,  8 Jun 2021 23:36:34 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 23B4C83276;
	Tue,  8 Jun 2021 23:36:34 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id DDD8E1BF414
 for <intel-wired-lan@lists.osuosl.org>; Tue,  8 Jun 2021 23:36:29 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id D836283189
 for <intel-wired-lan@lists.osuosl.org>; Tue,  8 Jun 2021 23:36:29 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id l19_Un9iZbLk for <intel-wired-lan@lists.osuosl.org>;
 Tue,  8 Jun 2021 23:36:28 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by smtp1.osuosl.org (Postfix) with ESMTPS id B70D883096
 for <intel-wired-lan@lists.osuosl.org>; Tue,  8 Jun 2021 23:36:28 +0000 (UTC)
IronPort-SDR: AlMNJmGNCND1I6wVT7URiixOr8WIYDFxkMUXhsdgll2+lhMgJP5xpz9ewDs4cBLmVTeBv7Ie3S
 xG5Eh42ObTRQ==
X-IronPort-AV: E=McAfee;i="6200,9189,10009"; a="268823017"
X-IronPort-AV: E=Sophos;i="5.83,259,1616482800"; d="scan'208";a="268823017"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Jun 2021 16:36:26 -0700
IronPort-SDR: 6ib16SjeHvbWv7nkN8+DHS6vEAOoIIJ6W9obd9QZtNtdQjrNzD74AeaQ+wLiyf9ESHJMfFG8QY
 rjyxIxQM4a+w==
X-IronPort-AV: E=Sophos;i="5.83,259,1616482800"; d="scan'208";a="469679840"
Received: from jbrandeb-mobl4.amr.corp.intel.com (HELO localhost)
 ([10.209.89.248])
 by fmsmga004-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Jun 2021 16:36:26 -0700
Date: Tue, 8 Jun 2021 16:36:25 -0700
From: Jesse Brandeburg <jesse.brandeburg@intel.com>
To: "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>
Message-ID: <20210608163625.00007f13@intel.com>
In-Reply-To: <1e972693734fc6c19fc03b74cb3037b0a4f42852.camel@intel.com>
References: <20210528014943.3036054-1-jesse.brandeburg@intel.com>
 <20210608092705.00005761@intel.com>
 <1e972693734fc6c19fc03b74cb3037b0a4f42852.camel@intel.com>
X-Mailer: Claws Mail 3.12.0 (GTK+ 2.24.28; i686-w64-mingw32)
MIME-Version: 1.0
Subject: Re: [Intel-wired-lan] [PATCH net-next v2] ice: add tracepoints
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
Cc: "Shelton, Benjamin H" <benjamin.h.shelton@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Nguyen, Anthony L wrote:

> On Tue, 2021-06-08 at 09:27 -0700, Jesse Brandeburg wrote:
> > Jesse Brandeburg wrote:
> >
> > > This patch is modeled after one by Scott Peterson for i40e.
> >
> > I found a little bug in the code, Tony do you want to correct it or
> > have me send a v3?
> 
> A v3 would be preferable.

ok sent.

This is superceded by v3
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
