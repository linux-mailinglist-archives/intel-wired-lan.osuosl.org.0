Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3BDBA33F627
	for <lists+intel-wired-lan@lfdr.de>; Wed, 17 Mar 2021 18:00:57 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 845B540143;
	Wed, 17 Mar 2021 17:00:55 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id KKQRAUScQBIo; Wed, 17 Mar 2021 17:00:54 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 9A5364150B;
	Wed, 17 Mar 2021 17:00:54 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id E955F1BF402
 for <intel-wired-lan@lists.osuosl.org>; Wed, 17 Mar 2021 17:00:47 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id D89E34017B
 for <intel-wired-lan@lists.osuosl.org>; Wed, 17 Mar 2021 17:00:47 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 2xxViyXt8bL6 for <intel-wired-lan@lists.osuosl.org>;
 Wed, 17 Mar 2021 17:00:47 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 4321A40143
 for <intel-wired-lan@lists.osuosl.org>; Wed, 17 Mar 2021 17:00:47 +0000 (UTC)
IronPort-SDR: ihiFbnAWrlftg7bvuXZXZ6Fz9ZFWY65PhZh4E3GUF9gktG2Z1xZnM6x8tmQThLTH1gg3J3zI7r
 DIjPPrRpmcwg==
X-IronPort-AV: E=McAfee;i="6000,8403,9926"; a="168780732"
X-IronPort-AV: E=Sophos;i="5.81,257,1610438400"; d="scan'208";a="168780732"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Mar 2021 10:00:45 -0700
IronPort-SDR: OvHxno4mREoUHFZRIKk5WYAoZWHH+n2AbIKte/Ujez80a/FP4ygTb/5KVdBotqhXhzep7NhyEZ
 2Uz4kxzF+Ydw==
X-IronPort-AV: E=Sophos;i="5.81,256,1610438400"; d="scan'208";a="372414118"
Received: from jbrandeb-mobl4.amr.corp.intel.com (HELO localhost)
 ([10.209.10.230])
 by orsmga003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Mar 2021 10:00:45 -0700
Date: Wed, 17 Mar 2021 10:00:44 -0700
From: Jesse Brandeburg <jesse.brandeburg@intel.com>
To: Bhaskar Chowdhury <unixbhaskar@gmail.com>
Message-ID: <20210317100044.00005f65@intel.com>
In-Reply-To: <20210317100001.2172893-1-unixbhaskar@gmail.com>
References: <20210317100001.2172893-1-unixbhaskar@gmail.com>
X-Mailer: Claws Mail 3.12.0 (GTK+ 2.24.28; i686-w64-mingw32)
MIME-Version: 1.0
Subject: Re: [Intel-wired-lan] [PATCH] net: ethernet: intel: Fix a typo in
 the file ixgbe_dcb_nl.c
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
Cc: netdev@vger.kernel.org, rdunlap@infradead.org, linux-kernel@vger.kernel.org,
 intel-wired-lan@lists.osuosl.org, kuba@kernel.org, davem@davemloft.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Bhaskar Chowdhury wrote:

> 
> s/Reprogam/Reprogram/
> 
> Signed-off-by: Bhaskar Chowdhury <unixbhaskar@gmail.com>

Reviewed-by: Jesse Brandeburg <jesse.brandeburg@intel.com>
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
