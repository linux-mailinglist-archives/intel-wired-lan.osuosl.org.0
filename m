Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id MGErKpC1w2litgQAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Wed, 25 Mar 2026 11:14:40 +0100
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 79611322B42
	for <lists+intel-wired-lan@lfdr.de>; Wed, 25 Mar 2026 11:14:39 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 755BC410AE;
	Wed, 25 Mar 2026 10:14:36 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Z4uZt2gSRY_W; Wed, 25 Mar 2026 10:14:35 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org BA5F1410B5
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1774433675;
	bh=6lAcGfQKXZW+omaPQXWU1y9+WEJKETBxm9e+2CGBAHM=;
	h=Date:From:To:Cc:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=tG11UvcyXkwzFOFpVAy4f6mhr05Oai6k3UcwlgOPW/T5i1oyaJKbuLC4jlmRKIPIv
	 Bw/vV7nZU9NzHGFVsMtEa+G7IrbIOpZdVX2KHhl5XJXWMVU1U1vCE2/QBodBMIg8XH
	 gjFvvQWb/gRe+UqK9kQAVYnoK1K2LVqiZi2eVs8/aApq6cdkRb9qKsOS8leh58+M24
	 fV/HeTJGgW+lgtPhQxiLwiT6qwGsTvQkUznlgiQhFFZptSaLo6rnJ0KqUWSJ35JfH9
	 dtHETweo3Rsaz8Z4aS31Y+dIy+A1Xxf6FvMpKcWK9YfzXXalfji5RbDoNzca1lH2JR
	 Kj63MWz6zNm9Q==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id BA5F1410B5;
	Wed, 25 Mar 2026 10:14:35 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists1.osuosl.org (Postfix) with ESMTP id C659C353
 for <intel-wired-lan@lists.osuosl.org>; Wed, 25 Mar 2026 10:14:33 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id AC5E04109F
 for <intel-wired-lan@lists.osuosl.org>; Wed, 25 Mar 2026 10:14:33 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id GfPkyu6-x4nS for <intel-wired-lan@lists.osuosl.org>;
 Wed, 25 Mar 2026 10:14:32 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.15;
 helo=mgamail.intel.com; envelope-from=lkp@intel.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org A23E240C05
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org A23E240C05
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.15])
 by smtp4.osuosl.org (Postfix) with ESMTPS id A23E240C05
 for <intel-wired-lan@lists.osuosl.org>; Wed, 25 Mar 2026 10:14:32 +0000 (UTC)
X-CSE-ConnectionGUID: Uc1fdQ+kROizpxzDnkbhRQ==
X-CSE-MsgGUID: 1OUX0D/JQam9oodhdRuPwQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11739"; a="79062179"
X-IronPort-AV: E=Sophos;i="6.23,139,1770624000"; d="scan'208";a="79062179"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by orvoesa107.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Mar 2026 03:14:31 -0700
X-CSE-ConnectionGUID: FvRNbSgoTFKR59qMuZurBg==
X-CSE-MsgGUID: MkgIVVB9TSK+pj5/yK7LWw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,139,1770624000"; d="scan'208";a="224645513"
Received: from igk-lkp-server01.igk.intel.com (HELO 9958d990ccf2)
 ([10.211.93.152])
 by orviesa008.jf.intel.com with ESMTP; 25 Mar 2026 03:14:30 -0700
Received: from kbuild by 9958d990ccf2 with local (Exim 4.98.2)
 (envelope-from <lkp@intel.com>) id 1w5LFr-0000000074P-2A6z;
 Wed, 25 Mar 2026 10:14:27 +0000
Date: Wed, 25 Mar 2026 11:14:09 +0100
From: kernel test robot <lkp@intel.com>
To: Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 Jiri Pirko <jiri@resnulli.us>, netdev@vger.kernel.org,
 Jakub Kicinski <kuba@kernel.org>
Cc: oe-kbuild-all@lists.linux.dev,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 Eric Dumazet <edumazet@google.com>,
 intel-wired-lan@lists.osuosl.org, Simon Horman <horms@kernel.org>,
 Tony Nguyen <anthony.l.nguyen@intel.com>, Paolo Abeni <pabeni@redhat.com>
Message-ID: <202603251148.Sjx5pVxc-lkp@intel.com>
References: <20260323132136.13191-1-przemyslaw.kitszel@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260323132136.13191-1-przemyslaw.kitszel@intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1774433672; x=1805969672;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=1HQunXwctl1ifAye9q05SCcLeZKJxhkVVazF3cGdS/A=;
 b=SdAT43OvW90TEQJX4Tvkk2WlB0IHtLIPNN6QXKX4SqhSZgTCOF02aMg8
 u2SibPyG6qRvDzGxohPQblt1NCu0CyI8gUCMmj52lRRFPWeEy9N3b9H6s
 LcpY7MMg5tV6W4H/j+GJiYfIP9Vjfz+g9vAQ5ibNlOAucdK7lx28we4XC
 uDUMHu2+bL8wmwWXJ1nYOZOjeIxVCN7w3GJYTnMT6AnJR7QTYblnxMEsO
 z9/0k8CEPM1+6720Gdyo0l/OiZZeuBcbLRZeM5ErqHZLHWGEIePC/k1a2
 Zx/fR9D3UiNIKW5Knxk3ny6SYuK5wQLM87EKfVrnl92qGoXm57QCKnOP6
 Q==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=SdAT43Ov
Subject: Re: [Intel-wired-lan] [PATCH net-next] devlink: unify
 devlink_shd_get_priv() into devlink_priv()
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
X-Spamd-Result: default: False [0.39 / 15.00];
	MID_CONTAINS_FROM(1.00)[];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	R_SPF_ALLOW(-0.20)[+mx];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:email,intel.com:mid,01.org:url];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:przemyslaw.kitszel@intel.com,m:jiri@resnulli.us,m:netdev@vger.kernel.org,m:kuba@kernel.org,m:oe-kbuild-all@lists.linux.dev,m:edumazet@google.com,m:horms@kernel.org,m:anthony.l.nguyen@intel.com,m:pabeni@redhat.com,s:lists@lfdr.de];
	FORGED_SENDER(0.00)[lkp@intel.com,intel-wired-lan-bounces@osuosl.org];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	ARC_NA(0.00)[];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[osuosl.org:+];
	MISSING_XM_UA(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FROM_NEQ_ENVFROM(0.00)[lkp@intel.com,intel-wired-lan-bounces@osuosl.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	RCPT_COUNT_SEVEN(0.00)[11];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:3701, ipnet:2605:bc80::/32, country:US];
	TAGGED_RCPT(0.00)[intel-wired-lan];
	RCVD_COUNT_SEVEN(0.00)[10]
X-Rspamd-Queue-Id: 79611322B42
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Hi Przemek,

kernel test robot noticed the following build errors:

[auto build test ERROR on net-next/main]

url:    https://github.com/intel-lab-lkp/linux/commits/Przemek-Kitszel/devlink-unify-devlink_shd_get_priv-into-devlink_priv/20260325-130848
base:   net-next/main
patch link:    https://lore.kernel.org/r/20260323132136.13191-1-przemyslaw.kitszel%40intel.com
patch subject: [Intel-wired-lan] [PATCH net-next] devlink: unify devlink_shd_get_priv() into devlink_priv()
config: x86_64-rhel-9.4-ltp (https://download.01.org/0day-ci/archive/20260325/202603251148.Sjx5pVxc-lkp@intel.com/config)
compiler: gcc-14 (Debian 14.2.0-19) 14.2.0
reproduce (this is a W=1 build): (https://download.01.org/0day-ci/archive/20260325/202603251148.Sjx5pVxc-lkp@intel.com/reproduce)

If you fix the issue in a separate patch/commit (i.e. not just a new version of
the same patch/commit), kindly add following tags
| Reported-by: kernel test robot <lkp@intel.com>
| Closes: https://lore.kernel.org/oe-kbuild-all/202603251148.Sjx5pVxc-lkp@intel.com/

All errors (new ones prefixed by >>):

   net/devlink/sh_dev.c: In function 'devlink_to_shd':
>> net/devlink/sh_dev.c:36:16: error: returning 'char (*)[]' from a function with incompatible return type 'struct devlink_shd *' [-Wincompatible-pointer-types]
      36 |         return &devlink->priv;
         |                ^~~~~~~~~~~~~~


vim +36 net/devlink/sh_dev.c

    33	
    34	static struct devlink_shd *devlink_to_shd(struct devlink *devlink)
    35	{
  > 36		return &devlink->priv;
    37	}
    38	

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
