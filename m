Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 5F3B319A07D
	for <lists+intel-wired-lan@lfdr.de>; Tue, 31 Mar 2020 23:12:26 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id DE781203EF;
	Tue, 31 Mar 2020 21:12:24 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id yJBk6rJP8wLC; Tue, 31 Mar 2020 21:12:24 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 37837251E1;
	Tue, 31 Mar 2020 21:12:24 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 0BF991BF339
 for <intel-wired-lan@lists.osuosl.org>; Tue, 31 Mar 2020 21:12:23 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 076F287EBC
 for <intel-wired-lan@lists.osuosl.org>; Tue, 31 Mar 2020 21:12:23 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id OnnUHyfWHy4t for <intel-wired-lan@lists.osuosl.org>;
 Tue, 31 Mar 2020 21:12:22 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 4801387EB5
 for <intel-wired-lan@lists.osuosl.org>; Tue, 31 Mar 2020 21:12:22 +0000 (UTC)
IronPort-SDR: YchmGhOuYAxKFSvxpUnrK9FBqkiLrvnsUJdszjfyQQf03LKb6ZXRsr1BUlf3uqOBcJLG+QCwST
 xwQyC7ZSLpsA==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Mar 2020 14:12:21 -0700
IronPort-SDR: FXBRmhUpmXZBF9OV1pFWHcxbRzOQUFvblnHpv4jV4Mqw+vQdZg2nNrPiGCV5F2wI7Xaz+sLmtc
 5LB4R5VDULog==
X-IronPort-AV: E=Sophos;i="5.72,329,1580803200"; d="scan'208";a="422436300"
Received: from latran-mobl.amr.corp.intel.com (HELO localhost) ([10.251.29.27])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Mar 2020 14:12:19 -0700
MIME-Version: 1.0
In-Reply-To: <bddc690a-8d29-fb44-8b26-67c3cf9fdf80@intel.com>
References: <20200318230102.36952-1-andre.guedes@intel.com>
 <20200318230102.36952-6-andre.guedes@intel.com>
 <bddc690a-8d29-fb44-8b26-67c3cf9fdf80@intel.com>
From: Andre Guedes <andre.guedes@linux.intel.com>
To: jeffrey.t.kirsher@intel.com, "Lifshits, Vitaly" <vitaly.lifshits@intel.com>,
 "Neftin, Sasha" <sasha.neftin@intel.com>,
 Andre Guedes <andre.guedes@intel.com>, intel-wired-lan@lists.osuosl.org
Date: Tue, 31 Mar 2020 14:12:12 -0700
Message-ID: <158568913295.84366.14895161973219728060@latran-mobl.amr.corp.intel.com>
User-Agent: alot/0.9
Subject: Re: [Intel-wired-lan] [PATCH 05/12] igc: Refactor
 igc_rar_set_index()
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

Quoting Neftin, Sasha (2020-03-31 04:22:12)
> > -/**
> > - * igc_rar_set_index - Sync RAL[index] and RAH[index] registers with MAC table
> > - * @adapter: address of board private structure
> > - * @index: Index of the RAR entry which need to be synced with MAC table
> > +/* Set MAC address filter in hardware.
> Small correction to be consistently. Please, keep /** line above method 
> declaration line.

Yes, I can fix that. I thought we utilized kernel-doc style comments only for
APIs, not local helper functions like this.

@Jeff, what works better for your workflow, I send a v2 in-reply-to this patch
or I send a v2 of the whole patchset?

- Andre
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
