Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 216F1502B5B
	for <lists+intel-wired-lan@lfdr.de>; Fri, 15 Apr 2022 15:56:58 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 5494840176;
	Fri, 15 Apr 2022 13:56:56 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id DN61ReBExLS3; Fri, 15 Apr 2022 13:56:55 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 5C8AE4011F;
	Fri, 15 Apr 2022 13:56:55 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id B62471BF30C
 for <intel-wired-lan@lists.osuosl.org>; Fri, 15 Apr 2022 13:56:50 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id A1F694011F
 for <intel-wired-lan@lists.osuosl.org>; Fri, 15 Apr 2022 13:56:50 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Xhk3gbD9EZUx for <intel-wired-lan@lists.osuosl.org>;
 Fri, 15 Apr 2022 13:56:50 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by smtp2.osuosl.org (Postfix) with ESMTPS id EEEA2400D1
 for <intel-wired-lan@lists.osuosl.org>; Fri, 15 Apr 2022 13:56:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1650031009; x=1681567009;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=v7unE14WbUKaCZVPi7jLQZ+PksxOmPjhyzrGT7gMB60=;
 b=Pw5T44ZDGTnPLTz36aivPdEFhX/H+D/cvWXuvoRNefRbo8S7NuuLS/D+
 X1ewhA5l4Z+uf+T321WDBuc6Jum8H88hMzlVGEYOBUx19Tx+8+cUWlcMY
 AGYrl8a6m0w3UlR7rJmE9GO0cWQX48QpVhvKJs7JKfvOaLidfkrrHrsQR
 Jy9Nhm9rrqnj4gZtFE9I3gLF64gaNNSMnTAPrDLnxQqpMsuzER3Pf1O35
 chQv02CwxYUBAjXnt3VWIYDF+fNv83b/jydINVThQjJbhR3T62gy6AS/6
 2L0VrBPAyLsSUtQkbiBEA87d+zZkqyRJKEa6Irtn4zDuVFnjnd+C51pi+ g==;
X-IronPort-AV: E=McAfee;i="6400,9594,10317"; a="349590536"
X-IronPort-AV: E=Sophos;i="5.90,262,1643702400"; d="scan'208";a="349590536"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Apr 2022 06:56:49 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.90,262,1643702400"; d="scan'208";a="527400057"
Received: from irvmail001.ir.intel.com ([10.43.11.63])
 by orsmga002.jf.intel.com with ESMTP; 15 Apr 2022 06:56:46 -0700
Received: from newjersey.igk.intel.com (newjersey.igk.intel.com
 [10.102.20.203])
 by irvmail001.ir.intel.com (8.14.3/8.13.6/MailSET/Hub) with ESMTP id
 23FDui6E023636; Fri, 15 Apr 2022 14:56:44 +0100
From: Alexander Lobakin <alexandr.lobakin@intel.com>
To: Maciej Fijalkowski <maciej.fijalkowski@intel.com>
Date: Fri, 15 Apr 2022 15:53:54 +0200
Message-Id: <20220415135354.478687-1-alexandr.lobakin@intel.com>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <YlldsfrRJURXpp5d@boxer>
References: <20220413072259.3189386-1-ivecera@redhat.com>
 <YlldFriBVkKEgbBs@boxer> <YlldsfrRJURXpp5d@boxer>
MIME-Version: 1.0
Subject: Re: [Intel-wired-lan] [PATCH net] ice: Protect vf_state check by
 cfg_lock in ice_vc_process_vf_msg()
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
Cc: Ivan Vecera <ivecera@redhat.com>, Fei Liu <feliu@redhat.com>,
 netdev@vger.kernel.org, mschmidt@redhat.com, Brett Creeley <brett@pensando.io>,
 open list <linux-kernel@vger.kernel.org>, Jakub Kicinski <kuba@kernel.org>,
 "moderated list:INTEL ETHERNET DRIVERS" <intel-wired-lan@lists.osuosl.org>,
 Paolo Abeni <pabeni@redhat.com>, "David S. Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

From: Maciej Fijalkowski <maciej.fijalkowski@intel.com>
Date: Fri, 15 Apr 2022 13:57:37 +0200

> On Fri, Apr 15, 2022 at 01:55:10PM +0200, Maciej Fijalkowski wrote:
> > On Wed, Apr 13, 2022 at 09:22:59AM +0200, Ivan Vecera wrote:
> > > Previous patch labelled "ice: Fix incorrect locking in
> > > ice_vc_process_vf_msg()"  fixed an issue with ignored messages
> > 
> > tiny tiny nit: double space after "
> > Also, has mentioned patch landed onto some tree so that we could provide
> > SHA-1 of it? If not, then maybe squashing this one with the mentioned one
> > would make sense?
> 
> Again, Brett's Intel address is bouncing, so:
> CC: Brett Creeley <brett@pensando.io>

Cc: Jacob Keller <jacob.e.keller@intel.com>

> 
> > 
> > > sent by VF driver but a small race window still left.

--- 8< ---

> > > -- 
> > > 2.35.1

Al
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
