Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id GG9yEDc5+2nUXwMAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Wed, 06 May 2026 14:51:03 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 4D9BC4DA84E
	for <lists+intel-wired-lan@lfdr.de>; Wed, 06 May 2026 14:51:02 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id B5BEE60DE1;
	Wed,  6 May 2026 12:51:00 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id E1yTJjMjvKnQ; Wed,  6 May 2026 12:50:59 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org D383460E0C
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1778071859;
	bh=QDT5YAawTztAqQ49DbeSVT0lgbqMvQKNKmbsyZ2De4A=;
	h=Date:To:Cc:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=cAHJDccj1LUw51C94EDPPMOsXFiJBjgzvTbCRNqroHEpGthpeJH5miM+wJan2cUFq
	 /1/Ey3ZmcntWxoSR9WCRqnRq1bRB4Rnv1c3ue2uhiuNoNO/FMshUC4Q4YWbayTGXYF
	 iuvxwVYh4TiZtWxn6el00E3sxkiI/Zlh9o3HHu335wW8ii3Vfi8emLz8/Swl0u4CqD
	 HPryhA53BhygCI4PfF939Db4OKRbzVAknDI90gWi7pWZQ9efr87Zf0yMG4SYhMNeOj
	 ri9zQHauSPXkVrkvgajHbRQFq16k06D62zHUduhWIxToDUiMm42fTDLWg4XFYEDBI1
	 kaupgafVJG56w==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id D383460E0C;
	Wed,  6 May 2026 12:50:59 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists1.osuosl.org (Postfix) with ESMTP id 4D4AD11B
 for <intel-wired-lan@lists.osuosl.org>; Wed,  6 May 2026 12:50:58 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 3343982350
 for <intel-wired-lan@lists.osuosl.org>; Wed,  6 May 2026 12:50:58 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id BMAu4VVp8vTj for <intel-wired-lan@lists.osuosl.org>;
 Wed,  6 May 2026 12:50:57 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.17;
 helo=mgamail.intel.com; envelope-from=marcin.szycik@linux.intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org B10298234D
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org B10298234D
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.17])
 by smtp1.osuosl.org (Postfix) with ESMTPS id B10298234D
 for <intel-wired-lan@lists.osuosl.org>; Wed,  6 May 2026 12:50:56 +0000 (UTC)
X-CSE-ConnectionGUID: y0kGFQZZSEWP9FBsqr8qXw==
X-CSE-MsgGUID: yh2l0/7gTY+PpNhxsQU8mQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11777"; a="78848499"
X-IronPort-AV: E=Sophos;i="6.23,219,1770624000"; d="scan'208";a="78848499"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by fmvoesa111.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 May 2026 05:50:56 -0700
X-CSE-ConnectionGUID: 158reD9IR/aWxx3kTHcTBg==
X-CSE-MsgGUID: ShPOC7/pQyO8IN62ZE0ukg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,219,1770624000"; d="scan'208";a="274267198"
Received: from mszycik-desk.igk.intel.com (HELO [10.217.161.2])
 ([10.217.161.2])
 by smtpauth.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 May 2026 05:50:54 -0700
Message-ID: <af025816-d5bb-40b7-a776-36ea4e05221a@linux.intel.com>
Date: Wed, 6 May 2026 14:50:45 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: intel-wired-lan@lists.osuosl.org, Jacob Keller <jacob.e.keller@intel.com>
Cc: netdev@vger.kernel.org, sandeep.penigalapati@intel.com,
 ananth.s@intel.com, alexander.duyck@gmail.com
References: <20260409120003.2719-1-marcin.szycik@linux.intel.com>
Content-Language: en-US
From: Marcin Szycik <marcin.szycik@linux.intel.com>
In-Reply-To: <20260409120003.2719-1-marcin.szycik@linux.intel.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1778071857; x=1809607857;
 h=message-id:date:mime-version:subject:to:cc:references:
 from:in-reply-to:content-transfer-encoding;
 bh=AjOnaNgsiOWj0vDA4OPhCCW+AJRwz5CExSuQwVUS5iY=;
 b=eavvO+vWPRC3UU+Bwn6k3sZVd6UQ1Od6CnjDN5F8PkY+gmMl1ZZOedgi
 NCEYuUdADPZdm0A2XkrEyBa1E0miqBSkwNkrgaraTQUl0kRVTbbetOAAL
 NB5h7wonP74t6sACTYFEbBuviVa+yIIuwRfg8FgxUqfvWp65J+f85gnh0
 +v4iioVBdUbn4r+fvzFociriudZdRv6zAa9t9TCROCfpGwv/453VFBYZm
 t1PcYyqOLJTz4uljbs+APOCSNRc72WP+UW7tb8oYl1imcmACHeoMzDsys
 fRIYHTgoU+yVlCjaIykakSLg1vSE7XtdjRwLaIyVpbF1XIkfiE62gD/Vz
 g==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=linux.intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=eavvO+vW
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v2 00/10] Add ACL support
X-BeenThere: intel-wired-lan@osuosl.org
X-Mailman-Version: 2.1.30
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
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>
X-Rspamd-Queue-Id: 4D9BC4DA84E
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.79 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	R_SPF_ALLOW(-0.20)[+mx];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[140.211.166.136:from];
	HAS_LIST_UNSUB(-0.01)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	ARC_NA(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sashiko.dev:url,linux.intel.com:mid,osuosl.org:dkim];
	DKIM_TRACE(0.00)[osuosl.org:+];
	RCPT_COUNT_FIVE(0.00)[6];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FROM_NEQ_ENVFROM(0.00)[marcin.szycik@linux.intel.com,intel-wired-lan-bounces@osuosl.org];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_CC(0.00)[vger.kernel.org,intel.com,gmail.com];
	NEURAL_HAM(-0.00)[-0.998];
	TAGGED_RCPT(0.00)[intel-wired-lan];
	MID_RHS_MATCH_FROM(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ASN(0.00)[asn:3701, ipnet:140.211.0.0/16, country:US];
	RCVD_COUNT_SEVEN(0.00)[9]

This patchset has been applied to dev-queue, however there were a lot of potential
issues reported by sashiko [1] that I'm currently addressing. In my opinion a lot of them
are valid, so I'm planning to submit v3 soon.

[1] https://sashiko.dev/#/patchset/20260409120003.2719-1-marcin.szycik%40linux.intel.com

On 09/04/2026 13:59, Marcin Szycik wrote:
> E8xx hardware provides a Ternary Classifier block for implementing
> functions such as ACL (Access Control List). In this series it's simply
> referred to as "ACL".
> 
> Implement ACL filtering. This expands support of network flow classification
> rules for the ethtool ntuple command. ACL filtering allows for an ip or port
> field's optional mask to be specified.
> 
> Example filters:
>   ethtool -N eth0 flow-type tcp4 dst-port 8880 m 0x00ff action 10
>   ethtool -N eth0 flow-type tcp4 src-ip 192.168.0.55 m 0.0.0.255 action -1
> 
> This is a resurrection of an old series from 2020 [1] with several
> improvements, but the fundamental logic unchanged. v1 was almost pulled
> in, but ultimately it was decided to drop it [2] because of unresolved
> issues. One issue was too many defensive NULL checks. Second issue is
> about inconsistency when using multiple input sets. Both are addressed
> in this patchset.
> 
> More about the second issue:
> 
> From [3]:
>> I would argue that you need to have some sort of logic that basically
>> checks to see if you are going to hit the input set issue and falls
>> back and applies the ACL rules. Otherwise you are significantly
>> hampering the usefulness of this filter type. It doesn't make sense
>> that dropping a field will cause a rule to fail to be added, but
>> masking a single bit in some field will make it valid. It would make
>> it a nightmare to use from the user point of view as the rules come
>> across as arbitrary.
> 
> Flow Director (FD) has a hardware limitation where all filters for the same
> packet type must use identical input sets. Previously, attempting to add the
> second filter would fail.
> 
> Patch 10 adds automatic fallback to ACL block when FD cannot accommodate a
> filter due to input set conflicts, which resolves this inconsistency.
> 
> v2:
> * Rebase. Notable conflicts were the removal of ice_status and the addition of
>   libie (which affected AdminQ communication)
> * Reduce the number of defensive NULL checks
> * Use = {} instead of memset for definitions
> * Use kzalloc_obj() instead of plain kzalloc()
> * Move from devm_ to plain allocation for objects that don't require it
> * Move iterator declaration to loop start
> * Move some defines out of structs
> * Fix kdoc (except untouched ice_ethtool_fdir.c functions)
> * Adjust style (err for return variable, spacing, rewrite some comments,
> * commit messages)
> * Remove overly verbose comments
> * Add patches 5, 6, 9 and 10
> * More changes listed in patches (if applicable)
> 
> [1] https://lore.kernel.org/intel-wired-lan/20200914153720.48498-1-anthony.l.nguyen@intel.com
> [2] https://lore.kernel.org/netdev/7192efe4d27c93148b3205e65f37203c89170316.camel@intel.com/#t
> [3] https://lore.kernel.org/netdev/CAKgT0Ucxd5-gvEwWAdbL04ER2o++RX_oekUV3E0rYquEgFKj1w@mail.gmail.com
> 
> Lukasz Czapnik (1):
>   ice: use ACL for ntuple rules that conflict with FDir
> 
> Marcin Szycik (3):
>   Revert "ice: remove unused ice_flow_entry fields"
>   ice: use plain alloc/dealloc for ice_ntuple_fltr
>   ice: re-introduce ice_dealloc_flow_entry() helper
> 
> Real Valiquette (5):
>   ice: initialize ACL table
>   ice: initialize ACL scenario
>   ice: create flow profile
>   ice: create ACL entry
>   ice: program ACL entry
> 
> Tony Nguyen (1):
>   ice: rename shared Flow Director functions and structs
> 
>  drivers/net/ethernet/intel/ice/Makefile       |    5 +-
>  drivers/net/ethernet/intel/ice/ice.h          |   21 +-
>  drivers/net/ethernet/intel/ice/ice_acl.h      |  170 +++
>  drivers/net/ethernet/intel/ice/ice_acl_main.h |    9 +
>  .../net/ethernet/intel/ice/ice_adminq_cmd.h   |  391 +++++-
>  drivers/net/ethernet/intel/ice/ice_arfs.h     |    2 +-
>  drivers/net/ethernet/intel/ice/ice_fdir.h     |   18 +-
>  .../net/ethernet/intel/ice/ice_flex_pipe.h    |    2 +
>  drivers/net/ethernet/intel/ice/ice_flow.h     |   39 +-
>  .../net/ethernet/intel/ice/ice_lan_tx_rx.h    |    3 +
>  drivers/net/ethernet/intel/ice/ice_type.h     |    5 +
>  drivers/net/ethernet/intel/ice/ice_acl.c      |  486 +++++++
>  drivers/net/ethernet/intel/ice/ice_acl_ctrl.c | 1111 +++++++++++++++
>  drivers/net/ethernet/intel/ice/ice_acl_main.c |  293 ++++
>  drivers/net/ethernet/intel/ice/ice_arfs.c     |    8 +-
>  drivers/net/ethernet/intel/ice/ice_ethtool.c  |    8 +-
>  ...ce_ethtool_fdir.c => ice_ethtool_ntuple.c} |  641 ++++++---
>  drivers/net/ethernet/intel/ice/ice_fdir.c     |   30 +-
>  .../net/ethernet/intel/ice/ice_flex_pipe.c    |   11 +-
>  drivers/net/ethernet/intel/ice/ice_flow.c     | 1208 ++++++++++++++++-
>  drivers/net/ethernet/intel/ice/ice_lib.c      |   10 +-
>  drivers/net/ethernet/intel/ice/ice_main.c     |   91 +-
>  drivers/net/ethernet/intel/ice/virt/fdir.c    |   32 +-
>  23 files changed, 4344 insertions(+), 250 deletions(-)
>  create mode 100644 drivers/net/ethernet/intel/ice/ice_acl.h
>  create mode 100644 drivers/net/ethernet/intel/ice/ice_acl_main.h
>  create mode 100644 drivers/net/ethernet/intel/ice/ice_acl.c
>  create mode 100644 drivers/net/ethernet/intel/ice/ice_acl_ctrl.c
>  create mode 100644 drivers/net/ethernet/intel/ice/ice_acl_main.c
>  rename drivers/net/ethernet/intel/ice/{ice_ethtool_fdir.c => ice_ethtool_ntuple.c} (79%)
> 

