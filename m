Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 91A9E873C86
	for <lists+intel-wired-lan@lfdr.de>; Wed,  6 Mar 2024 17:46:18 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 4285E410D7;
	Wed,  6 Mar 2024 16:46:17 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id U_5B9Np7O4mz; Wed,  6 Mar 2024 16:46:16 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org C42B540690
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1709743576;
	bh=IR+FX+hgmGE7Y9G44qdCVEnvXTGQcl3gILv+Q5dM9bY=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=tb6Q+5imb5oZ/Z4+Eg/fCunu+a67WP3NSmdEAd3dq1jlZ5UVb8+lXAlDbeEZz3lPZ
	 6wPBrB/kRL4O9cntJgpivD+8+75cuAzwJZ/+fa9vA1ksPJ1dy4n4WYBDcfF4tig7DN
	 soZIti6fZmRvoy0hlaDerbgzv3AMqooeQNLGzrnAQpgFS2pqcqUhmUoHIbcvz6gOKO
	 aepkdn/TrV5fYsfO+aQEEMtb1yYUDKTrlzAPQfWPNuT52orbeULwVOfgmnEbMj4uH+
	 7l//ccLNXHZEEElUMTCQIB1e85zi4iloy44t3uTSc4wBoWmuPTrUOsMPQx42ZqjZRE
	 2qE8zJTaN9UgA==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id C42B540690;
	Wed,  6 Mar 2024 16:46:15 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 18DC01BF3FD
 for <intel-wired-lan@lists.osuosl.org>; Wed,  6 Mar 2024 16:46:14 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 0CC1941852
 for <intel-wired-lan@lists.osuosl.org>; Wed,  6 Mar 2024 16:46:14 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Gt7O68Vz4fRh for <intel-wired-lan@lists.osuosl.org>;
 Wed,  6 Mar 2024 16:46:13 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.9;
 helo=mgamail.intel.com; envelope-from=maciej.fijalkowski@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org BCC7E41867
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org BCC7E41867
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.9])
 by smtp2.osuosl.org (Postfix) with ESMTPS id BCC7E41867
 for <intel-wired-lan@lists.osuosl.org>; Wed,  6 Mar 2024 16:46:12 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,11005"; a="15088884"
X-IronPort-AV: E=Sophos;i="6.06,208,1705392000"; d="scan'208";a="15088884"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by fmvoesa103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Mar 2024 08:46:11 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.06,208,1705392000"; d="scan'208";a="14463343"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by orviesa004.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 06 Mar 2024 08:46:12 -0800
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Wed, 6 Mar 2024 08:46:11 -0800
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Wed, 6 Mar 2024 08:46:11 -0800
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.101)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Wed, 6 Mar 2024 08:46:10 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=gSA1aS6DMfD/UbZ2B3bm3OKFTzWD7HGwAPRq59BAjby5fRuDGSaJK2iJno4n095t5qRu80/qV6VAWtdSedubR/Fdr8UfzquUjF4nXiY+YrkNXu77/2t1c8tsh9vPoK6rj4omqF0fs7/4cCeWoIikuT7oDPEY9WVQmibXPYGElQ85NFjcUSYYhfgfovfawpKOQrSnRHcAfStqPT6Ei6whcOpaZNlrY/fhtR55QNawDys1AFkEUEuypLp7ukC17r+TLg/jXwWmieWFAudZnxag0N5nTOfVZEkJz3uTFIkxQlKbY2lDHEuu7ZU+pWQ5n47aCc1dqXze0UsINYKcPwa3RA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=IR+FX+hgmGE7Y9G44qdCVEnvXTGQcl3gILv+Q5dM9bY=;
 b=grad+5fk4C+ZxUxqiEJUZz7WwnXNQqskHj9e1ndfd3liq1XH9UeyFl0gpdt/CkQ52pSFqU42KnI98g3iG6IGafhVlLGGTplxH+q7pQ5igx959XwnxZ0Prikom8SiqYDib0hGsPa9cqkC9yVwul7XGDi9sVpjM1ZDgVLu0i2DlAKBz6xBkKqVFPZJ/u1SuAJ3Yc8LfQHqU1K82Veprqj6+hMT1gVy5EERwSEi3OpaUA3oMZCd7wX/ESIFZ0gF7FqGxPoIOPNp7ySqRhZ24tc9/vksOpBUDGDyk5i+/yWBU+PXXiNRyrMnp/LTTljfY5YE1NslXaJFNt6AnRL5OOGUjQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6117.namprd11.prod.outlook.com (2603:10b6:8:b3::19) by
 CY8PR11MB7172.namprd11.prod.outlook.com (2603:10b6:930:93::10) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.7362.23; Wed, 6 Mar 2024 16:46:08 +0000
Received: from DM4PR11MB6117.namprd11.prod.outlook.com
 ([fe80::ccab:b5f4:e200:ee47]) by DM4PR11MB6117.namprd11.prod.outlook.com
 ([fe80::ccab:b5f4:e200:ee47%6]) with mapi id 15.20.7362.019; Wed, 6 Mar 2024
 16:46:08 +0000
Date: Wed, 6 Mar 2024 17:46:02 +0100
From: Maciej Fijalkowski <maciej.fijalkowski@intel.com>
To: Jesse Brandeburg <jesse.brandeburg@intel.com>
Message-ID: <ZeidykgnELeMx6xm@boxer>
References: <20240304230845.14934-1-jesse.brandeburg@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <20240304230845.14934-1-jesse.brandeburg@intel.com>
X-ClientProxiedBy: WA1P291CA0023.POLP291.PROD.OUTLOOK.COM
 (2603:10a6:1d0:19::7) To DM4PR11MB6117.namprd11.prod.outlook.com
 (2603:10b6:8:b3::19)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB6117:EE_|CY8PR11MB7172:EE_
X-MS-Office365-Filtering-Correlation-Id: 64d3b616-3aba-4a59-afa2-08dc3dfcebfd
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 19CiFtZeioekA+eBApnAVRvIdr45+3pIDbnacgnVZpGOz05aG5Pg28uZzGun9K2Vvqo2llf2UhDVwYwqlDDsVitK7eWAZ0t7xkJVIdBvXZ04biuVvlquy6u/BncPr+D5pa3mjAs1d8hwQH1rY2maRIsjPQYS+O9hIL6zM4PGA7ewFK8HhUxmB5DOoB7Ws35g11SJZRWGvMO+qo8Mh4LLhvifExGDtAC0URwgHLmmDXp7L6da4d0eMOY1ldAoL3Qo13ap8RAPX4km0l1My+nDMxHGfMsrPeOLyFgy0fGURe7ipH/MiWd/nyb+FIjsfPX2fFNGNrj2iPwuKRAEyittTWMrqJJORyD+RIJ4BG4XRH7cXKu+urWkzcOYv+F33wsG/UlWkNGFA0wlbnpmB6rsKJUIN1yxliGeQ7JYB+HD4BdiEm80lmgNLeIr5ERWgNwhdJrtfueguUycBnxLQKeBTNSz+0N3+l2F9NkGqIQeazgOpoUzLfB2wRgh1HVU1QzDKEPmgCWWr71UB3cYO9j4pjuzE/hROQ7PsOJFgCyia90zCYtLrHnOYHrW1ZLfXn356IHR/GpqkJyfcPt4sdXJu/1NeuBrjGOBu9Ay0xAi3obiUG1+hRqjdh7LeDUgasYeUFwc3gwqgmgg1JgXnHUFHKCkTcjvd5bMxLWOxPTFqyo=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6117.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(376005); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?6QPZWhq9Lj+rHWXjx6HglorNmzwXmvenLfla5HYYeI6Kv25ZhJHfNcIOW4Ul?=
 =?us-ascii?Q?MF3Q9i4vf7c8KTnGlmhpIs4EYSN9l4BimnRGAmyAEHodnRIrEMOQghb9eI1u?=
 =?us-ascii?Q?VMsjYu9KcrYbhM1Qro9qpbUwk6PMIz7B2Hve2ue+NB9cWTMAxmAyRtvz2+il?=
 =?us-ascii?Q?DofczTj9rQmabLJ1HtK0cUlwmMRK+cQrCDf6l7XKhFlQUkTbFvM85VaX/hn+?=
 =?us-ascii?Q?TXcuqjTHmq6nQCk9O/tFiO7MT+36vYsbsw1or3DRF7/T7HMTPB77izrTUC6p?=
 =?us-ascii?Q?o2EVyNW57eTOggnbgmEDFs3GWIPVUgalhJvfLmVe3UcuAQ4CM6OQ+EHebOoS?=
 =?us-ascii?Q?2O5+Tq6f56W9Cgxe1k9ORxkWW47dhaBAqh5SZJMdsLdQLk7IfPU4gJqcE3uT?=
 =?us-ascii?Q?fqeAH8uZexBmVW/9SkGYRTt4qq/a1bBHWeZyronFkscNAiIq8bMN4HlcZiV2?=
 =?us-ascii?Q?lSzTc3ZruGDITEHXjY3TOZjZouOyBAOEi98cYSQ5kEPUT8oPxQ85q2Usbad1?=
 =?us-ascii?Q?ffypn647o7wg9HEDymrKd4TrJjtlrnqJpppolKaGB2L/pCagNHby2bJi2VtX?=
 =?us-ascii?Q?hBhXWeHjUlVoKkoWc7nP20Vt1UjAXc4k75WP7IFi+ha/NC/ILK/LaPSzeVPK?=
 =?us-ascii?Q?Aofk4uxmJ/IQKxcIMcSmb75O/jgaCjiFZu0KHg9H388ycsL2YziWVpDm/ug2?=
 =?us-ascii?Q?tajHMSCic0orC0m/2MqFPp2iysWzsRcLlXuZXmW2i38fSC17skA/InrWv4Xh?=
 =?us-ascii?Q?hZM/ZzlqHaQVsYb/C4H9XCvwK1K/jnNPthBmLDBOPnCPWOtmZ5a3KIkQHCtt?=
 =?us-ascii?Q?vi/aXnqieFJeaVjUT72gioErN60cfZIWl/+l/Py/QbXlbpDCfopGYTb6No/z?=
 =?us-ascii?Q?XLyTij5pqqt6GUJQPLju5ZfBzz+OYUTCDPrAPn7X7REScCqqKGTlzbJHduZy?=
 =?us-ascii?Q?Cqwkm+j04emJjsmurdImKXKSEU5ksxNlAmlo+7RqzUNEUNAxP6rRoOeC1Mev?=
 =?us-ascii?Q?D/n6Y/YpaEfESmdP7b2rcVNdrwneYz8NLs0KXgcaPWFVBOqlVunobH4fwDO3?=
 =?us-ascii?Q?RniwkOCmAJK4yMyEghvZmzXF/bcly+pIxZEZHKkW+Z4rcPtIfCVpsJy0Qg+0?=
 =?us-ascii?Q?bM1IsIdgsdzxLjCgRY0c+yxnYuYRzenzQD4wPNXDc8P9vG/pEMcDv1heY+F3?=
 =?us-ascii?Q?Sk02pKgUpTe9WQ9e6UzHVpJMTehkJ4j6qxK2dMrP60DYFMNSJeSLW3BGW0LC?=
 =?us-ascii?Q?/tZcoDXTFHzcKOW47vSlUacJmwPnljuC+qpRF6B+krx0e4arcdHGXGORHEW3?=
 =?us-ascii?Q?uTK/x7hho7cv5zE2tH3dTXsAhZit2pfigip5jv06i/bge7zUDymaStsg4cf0?=
 =?us-ascii?Q?LuMNrvpGEve2ItguO/CENxa3iQdt1QnyEC/4gwQPIouGWkvJIdnpD6P7TQv0?=
 =?us-ascii?Q?GE3E8DEAx15qj6Nq7VquljM8nzZocp+l6oh8zGmRhwD+qS/957KU+wgRUm7A?=
 =?us-ascii?Q?Vx1HSgAt4Lxcj9xGjMzeRLrddZsslXXiSCrsqrg8GVpHV4lVpz1EFzVnCo5T?=
 =?us-ascii?Q?XPAmVU5lefdwTGMvwT4OoYNVQobwxHK4KpvEJD7XLJQ8v3hBkrtnTeUISA79?=
 =?us-ascii?Q?Mg=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 64d3b616-3aba-4a59-afa2-08dc3dfcebfd
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6117.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 06 Mar 2024 16:46:08.1498 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: El0evzYXZ1cSedyz6CVxR8d9+aD4saJ6YclW/FuLPY+AHy6bEOxwGUygGaQqXVnRp4DRkl3M/ah23qvAIB1Gf0quWIvY2TNkO4ay9O3mgZU=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY8PR11MB7172
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1709743572; x=1741279572;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=fquboVnU31HdpBFYeMutCIVFwFUmGUREhPKKWRri2I4=;
 b=I9smm3MONMNSBqQIlUdwFT/uRUNSMI8WAgGXVsKXM6Dhz5kSmxKJ11tc
 GxoKXpLT+Nm/QJY9bbroD9ZD9Y3DaqWxcMbbcy8LaBPomT9OVDGB2lypJ
 udEgrbdJBI4CeFm+gy+HHhLNc/10Aci/uwE+21dfY+CARyalu8QND7aqa
 fmGdHifDKMjc5e8iIkUieTVB++A9iGXgRPEOMp7NXtNigux6aE2fXec4u
 L+JTSpKaVZYgsTVOC5KoFSKYOI+Jgw0+ed7D9k8VJfmmsHxC/Oq2yjIan
 pThH/VbTa2NsY0YTgWq81od8SvyTa8422SDmYcwd+lg6wMJOZtg2A7AID
 g==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=I9smm3MO
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-net v1] ice: fix bug with suspend
 and rebuild
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
Cc: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>,
 netdev@vger.kernel.org, Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 Eric Dumazet <edumazet@google.com>, Tony Nguyen <anthony.l.nguyen@intel.com>,
 Simon Horman <horms@kernel.org>, Jakub
 Kicinski <kuba@kernel.org>, intel-wired-lan@lists.osuosl.org,
 Paolo Abeni <pabeni@redhat.com>, "David
 S. Miller" <davem@davemloft.net>, Robert Elliott <elliott@hpe.com>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Mon, Mar 04, 2024 at 03:08:44PM -0800, Jesse Brandeburg wrote:
> The ice driver would previously panic during suspend. This is caused
> from the driver *only* calling the ice_vsi_free_q_vectors() function by
> itself, when it is suspending. Since commit b3e7b3a6ee92 ("ice: prevent
> NULL pointer deref during reload") the driver has zeroed out
> num_q_vectors, and only restored it in ice_vsi_cfg_def().
> 
> This further causes the ice_rebuild() function to allocate a zero length
> buffer, after which num_q_vectors is updated, and then the new value of
> num_q_vectors is used to index into the zero length buffer, which
> corrupts memory.
> 
> The fix entails making sure all the code referencing num_q_vectors only
> does so after it has been reset via ice_vsi_cfg_def().
> 
> I didn't perform a full bisect, but I was able to test against 6.1.77
> kernel and that ice driver works fine for suspend/resume with no panic,
> so sometime since then, this problem was introduced.
> 
> Also clean up an un-needed init of a local variable in the function
> being modified.
> 
> PANIC from 6.8.0-rc1:
> 
> [1026674.915596] PM: suspend exit
> [1026675.664697] ice 0000:17:00.1: PTP reset successful
> [1026675.664707] ice 0000:17:00.1: 2755 msecs passed between update to cached PHC time
> [1026675.667660] ice 0000:b1:00.0: PTP reset successful
> [1026675.675944] ice 0000:b1:00.0: 2832 msecs passed between update to cached PHC time
> [1026677.137733] ixgbe 0000:31:00.0 ens787: NIC Link is Up 1 Gbps, Flow Control: None
> [1026677.190201] BUG: kernel NULL pointer dereference, address: 0000000000000010
> [1026677.192753] ice 0000:17:00.0: PTP reset successful
> [1026677.192764] ice 0000:17:00.0: 4548 msecs passed between update to cached PHC time
> [1026677.197928] #PF: supervisor read access in kernel mode
> [1026677.197933] #PF: error_code(0x0000) - not-present page
> [1026677.197937] PGD 1557a7067 P4D 0
> [1026677.212133] ice 0000:b1:00.1: PTP reset successful
> [1026677.212143] ice 0000:b1:00.1: 4344 msecs passed between update to cached PHC time
> [1026677.212575]
> [1026677.243142] Oops: 0000 [#1] PREEMPT SMP NOPTI
> [1026677.247918] CPU: 23 PID: 42790 Comm: kworker/23:0 Kdump: loaded Tainted: G        W          6.8.0-rc1+ #1
> [1026677.257989] Hardware name: Intel Corporation M50CYP2SBSTD/M50CYP2SBSTD, BIOS SE5C620.86B.01.01.0005.2202160810 02/16/2022
> [1026677.269367] Workqueue: ice ice_service_task [ice]
> [1026677.274592] RIP: 0010:ice_vsi_rebuild_set_coalesce+0x130/0x1e0 [ice]
> [1026677.281421] Code: 0f 84 3a ff ff ff 41 0f b7 74 ec 02 66 89 b0 22 02 00 00 81 e6 ff 1f 00 00 e8 ec fd ff ff e9 35 ff ff ff 48 8b 43 30 49 63 ed <41> 0f b7 34 24 41 83 c5 01 48 8b 3c e8 66 89 b7 aa 02 00 00 81 e6
> [1026677.300877] RSP: 0018:ff3be62a6399bcc0 EFLAGS: 00010202
> [1026677.306556] RAX: ff28691e28980828 RBX: ff28691e41099828 RCX: 0000000000188000
> [1026677.314148] RDX: 0000000000000000 RSI: 0000000000000010 RDI: ff28691e41099828
> [1026677.321730] RBP: 0000000000000000 R08: 0000000000000000 R09: 0000000000000000
> [1026677.329311] R10: 0000000000000007 R11: ffffffffffffffc0 R12: 0000000000000010
> [1026677.336896] R13: 0000000000000000 R14: 0000000000000000 R15: ff28691e0eaa81a0
> [1026677.344472] FS:  0000000000000000(0000) GS:ff28693cbffc0000(0000) knlGS:0000000000000000
> [1026677.353000] CS:  0010 DS: 0000 ES: 0000 CR0: 0000000080050033
> [1026677.359195] CR2: 0000000000000010 CR3: 0000000128df4001 CR4: 0000000000771ef0
> [1026677.366779] DR0: 0000000000000000 DR1: 0000000000000000 DR2: 0000000000000000
> [1026677.374369] DR3: 0000000000000000 DR6: 00000000fffe0ff0 DR7: 0000000000000400
> [1026677.381952] PKRU: 55555554
> [1026677.385116] Call Trace:
> [1026677.388023]  <TASK>
> [1026677.390589]  ? __die+0x20/0x70
> [1026677.394105]  ? page_fault_oops+0x82/0x160
> [1026677.398576]  ? do_user_addr_fault+0x65/0x6a0
> [1026677.403307]  ? exc_page_fault+0x6a/0x150
> [1026677.407694]  ? asm_exc_page_fault+0x22/0x30
> [1026677.412349]  ? ice_vsi_rebuild_set_coalesce+0x130/0x1e0 [ice]
> [1026677.418614]  ice_vsi_rebuild+0x34b/0x3c0 [ice]
> [1026677.423583]  ice_vsi_rebuild_by_type+0x76/0x180 [ice]
> [1026677.429147]  ice_rebuild+0x18b/0x520 [ice]
> [1026677.433746]  ? delay_tsc+0x8f/0xc0
> [1026677.437630]  ice_do_reset+0xa3/0x190 [ice]
> [1026677.442231]  ice_service_task+0x26/0x440 [ice]
> [1026677.447180]  process_one_work+0x174/0x340
> [1026677.451669]  worker_thread+0x27e/0x390
> [1026677.455890]  ? __pfx_worker_thread+0x10/0x10
> [1026677.460627]  kthread+0xee/0x120
> [1026677.464235]  ? __pfx_kthread+0x10/0x10
> [1026677.468445]  ret_from_fork+0x2d/0x50
> [1026677.472476]  ? __pfx_kthread+0x10/0x10
> [1026677.476671]  ret_from_fork_asm+0x1b/0x30
> [1026677.481050]  </TASK>
> 
> Fixes: b3e7b3a6ee92 ("ice: prevent NULL pointer deref during reload")
> Reported-by: Robert Elliott <elliott@hpe.com>
> Signed-off-by: Jesse Brandeburg <jesse.brandeburg@intel.com>

Reviewed-by: Maciej Fijalkowski <maciej.fijalkowski@intel.com>

Well, that refactor of config path introduced lots of issues. Could
validation folks include a short list of tests they tried out against
tested patch?

> ---
>  drivers/net/ethernet/intel/ice/ice_lib.c | 16 ++++++++--------
>  1 file changed, 8 insertions(+), 8 deletions(-)
> 
> diff --git a/drivers/net/ethernet/intel/ice/ice_lib.c b/drivers/net/ethernet/intel/ice/ice_lib.c
> index 097bf8fd6bf0..0f5a92a6b1e6 100644
> --- a/drivers/net/ethernet/intel/ice/ice_lib.c
> +++ b/drivers/net/ethernet/intel/ice/ice_lib.c
> @@ -3238,7 +3238,7 @@ int ice_vsi_rebuild(struct ice_vsi *vsi, u32 vsi_flags)
>  {
>  	struct ice_vsi_cfg_params params = {};
>  	struct ice_coalesce_stored *coalesce;
> -	int prev_num_q_vectors = 0;
> +	int prev_num_q_vectors;
>  	struct ice_pf *pf;
>  	int ret;
>  
> @@ -3252,13 +3252,6 @@ int ice_vsi_rebuild(struct ice_vsi *vsi, u32 vsi_flags)
>  	if (WARN_ON(vsi->type == ICE_VSI_VF && !vsi->vf))
>  		return -EINVAL;
>  
> -	coalesce = kcalloc(vsi->num_q_vectors,
> -			   sizeof(struct ice_coalesce_stored), GFP_KERNEL);
> -	if (!coalesce)
> -		return -ENOMEM;
> -
> -	prev_num_q_vectors = ice_vsi_rebuild_get_coalesce(vsi, coalesce);
> -
>  	ret = ice_vsi_realloc_stat_arrays(vsi);
>  	if (ret)
>  		goto err_vsi_cfg;
> @@ -3268,6 +3261,13 @@ int ice_vsi_rebuild(struct ice_vsi *vsi, u32 vsi_flags)
>  	if (ret)
>  		goto err_vsi_cfg;
>  
> +	coalesce = kcalloc(vsi->num_q_vectors,
> +			   sizeof(struct ice_coalesce_stored), GFP_KERNEL);
> +	if (!coalesce)
> +		return -ENOMEM;
> +
> +	prev_num_q_vectors = ice_vsi_rebuild_get_coalesce(vsi, coalesce);
> +
>  	ret = ice_vsi_cfg_tc_lan(pf, vsi);
>  	if (ret) {
>  		if (vsi_flags & ICE_VSI_FLAG_INIT) {
> 
> base-commit: 6923134fc6b62d7909169b3ad913ab72ee04233a
> -- 
> 2.39.3
> 
> 
