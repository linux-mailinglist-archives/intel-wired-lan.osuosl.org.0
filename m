Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id SH8PC60vn2lXZQQAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Wed, 25 Feb 2026 18:21:49 +0100
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 7003119B787
	for <lists+intel-wired-lan@lfdr.de>; Wed, 25 Feb 2026 18:21:48 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 255C24067D;
	Wed, 25 Feb 2026 17:21:47 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 2iVHgAoKQ_LH; Wed, 25 Feb 2026 17:21:46 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 90D1140656
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1772040106;
	bh=5kWHYdxjj3hRdrbKHAsF5+xLMPj69Ufaj6E1gLNwMzo=;
	h=Date:From:To:CC:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=VgEjmGVkODRpLqdvDGZT/v46vIOup7hsh9vi5rZ+OqYPUqZSbNjmc86spSZBQw+KI
	 7sYeSjahkbWflB/mweIZWD8YyuOcu/dg+AfBYzd1eoGQNO/paXSevTDNvT/VN45h5M
	 xWWZw070sv2aLFjDufv3P8ExX4C0sbw5mGqGXWLO4sXCxsC0z1IdMFXRjy+fmCCMoU
	 w+bvg2oY6jgoJFVofinqRJN1kW1EyMMbiOPnaLxewh9lw3YuA2U4NWicpklXkLBRmn
	 749dw1KdDm8Vn9eoFiTh4Ft+nl7CEsqTDsBJuTySO+djAHvEQDsOGgiAetDnuudLZC
	 d+ymVCzlK/Vlw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 90D1140656;
	Wed, 25 Feb 2026 17:21:46 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists1.osuosl.org (Postfix) with ESMTP id 124C5204
 for <intel-wired-lan@lists.osuosl.org>; Wed, 25 Feb 2026 17:21:45 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id EC37441671
 for <intel-wired-lan@lists.osuosl.org>; Wed, 25 Feb 2026 17:21:44 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id MW6deKmhWF_Q for <intel-wired-lan@lists.osuosl.org>;
 Wed, 25 Feb 2026 17:21:44 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.17;
 helo=mgamail.intel.com; envelope-from=larysa.zaremba@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org E8F4F404DA
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org E8F4F404DA
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.17])
 by smtp2.osuosl.org (Postfix) with ESMTPS id E8F4F404DA
 for <intel-wired-lan@lists.osuosl.org>; Wed, 25 Feb 2026 17:21:43 +0000 (UTC)
X-CSE-ConnectionGUID: LvrYsxWITk+TQi0k6DBfpg==
X-CSE-MsgGUID: ygJX3dn0QNW2wpqF0qnKsA==
X-IronPort-AV: E=McAfee;i="6800,10657,11712"; a="72994561"
X-IronPort-AV: E=Sophos;i="6.21,310,1763452800"; d="scan'208";a="72994561"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by fmvoesa111.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Feb 2026 09:21:43 -0800
X-CSE-ConnectionGUID: WJej2ek5SFSSKaY/Oc8WvQ==
X-CSE-MsgGUID: hW7dJj/dR1yxgtWLYlTX7A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,310,1763452800"; d="scan'208";a="213953566"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by fmviesa006.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Feb 2026 09:21:25 -0800
Received: from ORSMSX903.amr.corp.intel.com (10.22.229.25) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Wed, 25 Feb 2026 09:21:21 -0800
Received: from ORSEDG902.ED.cps.intel.com (10.7.248.12) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35 via Frontend Transport; Wed, 25 Feb 2026 09:21:21 -0800
Received: from MW6PR02CU001.outbound.protection.outlook.com (52.101.48.56) by
 edgegateway.intel.com (134.134.137.112) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Wed, 25 Feb 2026 09:21:21 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=FgVvrCJGat8NLyCYnMOIl15wXuv4YcyMNBtc1NkQRJaUTjUod11S8j9+K+ck9s7dt/Cul42577kcsXPNmaa5dm0M1uxGCDKYCGTGLeGEeGVwQv37+JN6SkrV78HaCf8FocObz+EBo0EPRb27nUPoJLmqJLdGJqef+4ZHCIJTVDE3hEJ2rYfywJZmw27UyH6iLmCLwB0lHolJD+LewimdWNzCWAlB/nZeegDvFBfsfSCsMuXLOhGEPsZnMwd8GwvyCx2UpaOMqzJ+WWjp0UVlECMEem4yxSpIQgF39jUbzAv1IAmxnXQy8GVdGsDGb1aSvbWKmG0TzIkzce6UK2Xxsw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=5kWHYdxjj3hRdrbKHAsF5+xLMPj69Ufaj6E1gLNwMzo=;
 b=xR7JmrgClTEQLYpDEQd3D2Vi8NxeDupMlPePSRzncTzQkdfKpZ851wNN862L92FxCyUxcbq/Q06o5VuNpYdNv9kTtZ/Hx6/yiOQ9KL8/Obyscg+WayLk7pWrNX4+cz73X7a/Z/ouywnvNLwq3B28qKt90yeeubP57jwJZaKCrC5Anl+2gZjRJTCLWZSb3CzkH+zl6ZCL+dHCMjAiR6/mLepY4fYBgla051TJ+CWJBVOBpbLi3074xRFjsHyjca1cMNuiYJBZz8E5IfI1A8/MRHSlFtSd4ts7F4SQVq5wrWYgKa8mZXQuIA1bGBIQ8Ndvcnp2owJQ/Ak2k2ZINgTI2Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SN7PR11MB7540.namprd11.prod.outlook.com (2603:10b6:806:340::7)
 by DM4PR11MB5994.namprd11.prod.outlook.com (2603:10b6:8:5d::20) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9632.22; Wed, 25 Feb
 2026 17:21:18 +0000
Received: from SN7PR11MB7540.namprd11.prod.outlook.com
 ([fe80::2edd:5c6d:169c:389b]) by SN7PR11MB7540.namprd11.prod.outlook.com
 ([fe80::2edd:5c6d:169c:389b%4]) with mapi id 15.20.9632.017; Wed, 25 Feb 2026
 17:21:18 +0000
Date: Wed, 25 Feb 2026 18:21:09 +0100
From: Larysa Zaremba <larysa.zaremba@intel.com>
To: Simon Horman <horms@kernel.org>
CC: Tony Nguyen <anthony.l.nguyen@intel.com>,
 <intel-wired-lan@lists.osuosl.org>, Przemek Kitszel
 <przemyslaw.kitszel@intel.com>, Andrew Lunn <andrew+netdev@lunn.ch>, "David
 S. Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>, "Jakub
 Kicinski" <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>, "Alexander
 Lobakin" <aleksander.lobakin@intel.com>, Alexei Starovoitov <ast@kernel.org>, 
 Daniel Borkmann <daniel@iogearbox.net>, Jesper Dangaard Brouer
 <hawk@kernel.org>, John Fastabend <john.fastabend@gmail.com>, "Stanislav
 Fomichev" <sdf@fomichev.me>, Aleksandr Loktionov
 <aleksandr.loktionov@intel.com>, Natalia Wochtman
 <natalia.wochtman@intel.com>, <netdev@vger.kernel.org>,
 <linux-kernel@vger.kernel.org>, <bpf@vger.kernel.org>
Message-ID: <aZ8vhbxIsuXub4DZ@soc-5CG4396X81.clients.intel.com>
References: <20260223095222.3205363-1-larysa.zaremba@intel.com>
 <20260223095222.3205363-7-larysa.zaremba@intel.com>
 <aZ3l7sqKmz6fvmRp@horms.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <aZ3l7sqKmz6fvmRp@horms.kernel.org>
X-ClientProxiedBy: VI1P190CA0001.EURP190.PROD.OUTLOOK.COM
 (2603:10a6:802:2b::14) To SN7PR11MB7540.namprd11.prod.outlook.com
 (2603:10b6:806:340::7)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SN7PR11MB7540:EE_|DM4PR11MB5994:EE_
X-MS-Office365-Filtering-Correlation-Id: 49fc0f2e-4491-4f51-656e-08de749249d7
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|366016|376014|10070799003|1800799024|7416014; 
X-Microsoft-Antispam-Message-Info: R7VeZTR8KYq8zr+nBZ6A7oqC+G+qCcwRwGfH/Oj+fKJyM8pnc3LWviQKUCqHUA1bF/3fkpXhmmYpmhdODVYpGvbGSkaBWCxaHuWwojx6lEORBtPRqV8S0Et4H96uOCi4vqODA6yJq+jyvfjlXJU/9b2LQTnbcVqAHtVnggYvLvgiMhLbUpW/BLM8LWRue539aHCBs+goPJRGj4vCBS8OCYI73XvY+fte0B07iWDs/y+deHUZen9AGi49ZRHIGsUPNSZG3o95xnncjC9zssn3mNzROH450XW9rll//K9nRF7GrtXJna3mscA2bWqs6MwljOhPDmRgSXZSeMisMNoGcD62oPz5w9AC9Uy+WeCdzF2Cj120duRLJupWXMyy3s/egujZqOP66Q3mPOaXKbxEd7HUQfaLJGtH54pkAd8A6Ad7E58xNewni/8wqHraDRndVVrmQjslliVQ3ajtbrH0J/S6SW5OsDwaKwos8M6UZ39ds05aLeU8UOft+uVanRL+PcYvkn0JRHjYlbuptJCJg9kuJA8RzGbSeqvJ3UQSbUCVC75otaC0YjL4r2uBRkMK5RSYXodsz/wjIWjLiyIje50SlQB6JMNFjGRpu71lrNvSgArLsIg3HQCvWY1Jq5m8/eX0x7iShjxv0k2CCWj3eVes4aBgaowHrTwnZK8ZDO2AaAVzm+pcgtVNPKEBqB9+MMJ2uXyak6uqN7pWmzqUfsREtc7x9BGuWu6qFknHf8o=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN7PR11MB7540.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(10070799003)(1800799024)(7416014); DIR:OUT;
 SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 2
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?HsLv6BMz7MkHj/dFTe+uIn3QgSxQAYlftNeJGVmyqcfKMovqjHokr/WdZZ4F?=
 =?us-ascii?Q?28FNkC+RcqLhXqizldzNey2vBJZmtvieRpCpxvte1qAY5QBkBvJta+5g5HOw?=
 =?us-ascii?Q?LpehZR1dK/qYkylkXRlsSjKsLWoXl7GRGUXiQCSvAfayBolqVBDttj8XRyyY?=
 =?us-ascii?Q?NRLyGRavFEXX362bdtjfzpSonm/eKr3iEw6lnswySQQc338SPym/IL54O0DT?=
 =?us-ascii?Q?61xMKKjSgoBy9TrBCpHFcZwKTdeo3rat/Jji6rlwpivr6yYkB6jlCNdnehSR?=
 =?us-ascii?Q?8H569PyMmn78TK5/4OVSug1NzQ3jcusqpun4P0SlyP1Y/URCQLHsSTaJvpUl?=
 =?us-ascii?Q?dI4VxXkgVjSDZ3obRBAaS3zNRwPn9Zu2N3EJACYBD/nRQcrZLSw9jSlC7ad6?=
 =?us-ascii?Q?aC2VrrZvjHU9GtXwoPRgD0Y9z1afUleaK1sJMFfkAOdvqDEEg+wZBoP1GlCp?=
 =?us-ascii?Q?0k+uQ9yE3Cfw4YlpaDTMMMKVZNWhj9Gjdt4B/hGJLX7jd6J3qVb+JVTNbdL3?=
 =?us-ascii?Q?p9fxtN/u8d92+a1fFaENna2rWOm+a060cV8gUv5XRzPIcMaK+9/e/SAeT6iK?=
 =?us-ascii?Q?HI4Pg/rrggT45IC4E+3wHW/RmhmMZWilRR3j819eSbPr9HflbxPug9FPQBmI?=
 =?us-ascii?Q?wb233QGaigkWSzg4WWlw0vaeddI52yw4Zm6mmgVLemcJJS0kTCa6ZHGTEKQN?=
 =?us-ascii?Q?NVIQoRfxwXeVIKuWafi5rxVqBFkS6TlUpkgajUfaqtHL9nKarL/35m4Hi/FI?=
 =?us-ascii?Q?vndfmObF52/Cpcp4208hnRNH4DQ9eNCYLuUriPv2uBKFcaYZUAdU7muui2ZU?=
 =?us-ascii?Q?5xLBpB5vr8qfc219RQqvxuFmIyCXqWWnpu3/UlytF6fhZjGJIAZhUy0fuHaC?=
 =?us-ascii?Q?xqs4BmHqwRCtAY2KdAVnf7OtOOz9RFkxBq9jDl5ZaeKRKFmWOjHqIz4tIU9/?=
 =?us-ascii?Q?CY5llnnV+HouW88uOwPOis2jFQCJWFvsxPs2Vdi+XqP0vMyDwNV8YwUC9lcp?=
 =?us-ascii?Q?T1S3QIPTx2rAncdPojWCGOyBKk2Q5yvzd4SIykU5OQ7IXLV2XjsnqbAjksGJ?=
 =?us-ascii?Q?+s09kN4v4WJ2RZKbbBfk5kTQ9lLAijev7vqZC486VNw1v4FARK0jfxt7iR65?=
 =?us-ascii?Q?H9UZioLi+q4ny5W9pmFnsddcldMC5DidNLIcL1XQHNH7iR/xR5gZxrkp8Ris?=
 =?us-ascii?Q?pgvYqKhnzbrHldIDJPyiPL/BikM8LUg86eEktJcsLamrGqP28wvkMt92BpnZ?=
 =?us-ascii?Q?vYQVBadjjR5Ueq9GwZ8ZUNbgAuo3slxEY+UcDyOW8iCWCcaFCDqXVUMsmX3A?=
 =?us-ascii?Q?9Pau1AiLIRZqT6vW1CwZ7HD3JPZrm55GHA02cn89SL3lOA3qAjpjRInhi8RF?=
 =?us-ascii?Q?hGdNi1D4qn+o4cqkMVjmwqrOKWjYzMCP54JMXVlsBOj0MluT9aM0TfVJFLgH?=
 =?us-ascii?Q?4ehnwkBb/1UDfUfnvkIecX2TXHKqUrDblxj8Ugb0rpbmb4TI3gSSqDyp/PPY?=
 =?us-ascii?Q?WNnmQozKBlqUz5op2+OBLR4sYB3exOMGAWtW85WDoQoqb3ZlkObZQf44dlnY?=
 =?us-ascii?Q?EPdDEqb2JiiNqlFPczT1saiAgFKZw4jqLd7dmbN/c7Zej569ps3xUqjaD5GM?=
 =?us-ascii?Q?0kJvLETl8QHNjDUTa0b7xEGaNzRMTaA5yXZAz9luAckEUK5fLK7ImkKzG+y7?=
 =?us-ascii?Q?U15f4QjP8UD4w+rRM8ZXVL7ZRaiTJ7h3Me+lbAW0ZKrLidlkNy5wl5xJCiHi?=
 =?us-ascii?Q?Zl2iIZTpf3EnuQzxeOmm8+n0CUDNdT2D4/TN0SS3qByE2DPrgFh7KtVd8h8n?=
X-MS-Exchange-AntiSpam-MessageData-1: VBMaB9psfbRM0gSfD4XdL/nXOWvxzd8BBCY=
X-MS-Exchange-CrossTenant-Network-Message-Id: 49fc0f2e-4491-4f51-656e-08de749249d7
X-MS-Exchange-CrossTenant-AuthSource: SN7PR11MB7540.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 25 Feb 2026 17:21:18.8236 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: zrvgNIWBKJBB85Naz3N61G285f1C1O9PQLsg7XxC5yl57bY/OWV2oH6gQBGlhv/efJUEo7KTD11HKGQ+l9xR9v3DCemIYY1lG/EPf4DSOB4=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM4PR11MB5994
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1772040104; x=1803576104;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=/e4Xatj2CGEFyJHnTnQUXQZwF3XHxPix6hC4slDZfZE=;
 b=efMv5DmStZ5ynGNR/A2XvRNdgP/lPbLtUkiFPtqP9cVxYHpT2O756mMC
 hWJBVeMrT4+xJxxMUZAQfQTUtGUzXIyB93J8BvEmpZLcBC3oYo4en3Hcf
 WFViG/Ad5P2Hio/UcF7nYpKmjMEStP3AiUJcbdaGFaJDEY/pBu053TQcT
 nRdVWqmB4iVz/dsiLOUqODo2saWiuKw2QVOEBauJtPWqBLvc2/YzloPSO
 oxN/ZZcb+eaKeQaw1VvCHifRL7/xd1XL4l9qzd1EAngDZoN07AIZKfvh7
 mQnaPM4hFWrRbUc55uONtffJ3BQzL+ju40Y4c6bI3f3EXzRoleQYkgabd
 A==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=efMv5DmS
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next 06/10] ixgbevf: XDP_TX in
 multi-buffer through libeth
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
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [1.89 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	R_SPF_ALLOW(-0.20)[+mx:c];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	MAILLIST(-0.20)[mailman];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FROM_HAS_DN(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORGED_SENDER(0.00)[larysa.zaremba@intel.com,intel-wired-lan-bounces@osuosl.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[20];
	FORGED_RECIPIENTS(0.00)[m:horms@kernel.org,m:anthony.l.nguyen@intel.com,m:przemyslaw.kitszel@intel.com,m:andrew+netdev@lunn.ch,m:davem@davemloft.net,m:edumazet@google.com,m:kuba@kernel.org,m:pabeni@redhat.com,m:aleksander.lobakin@intel.com,m:ast@kernel.org,m:daniel@iogearbox.net,m:hawk@kernel.org,m:john.fastabend@gmail.com,m:sdf@fomichev.me,m:aleksandr.loktionov@intel.com,m:natalia.wochtman@intel.com,m:netdev@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:bpf@vger.kernel.org,m:andrew@lunn.ch,m:johnfastabend@gmail.com,s:lists@lfdr.de];
	MIME_TRACE(0.00)[0:+];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	FREEMAIL_CC(0.00)[intel.com,lists.osuosl.org,lunn.ch,davemloft.net,google.com,kernel.org,redhat.com,iogearbox.net,gmail.com,fomichev.me,vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_TWELVE(0.00)[14];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[larysa.zaremba@intel.com,intel-wired-lan-bounces@osuosl.org];
	DKIM_TRACE(0.00)[osuosl.org:+];
	NEURAL_HAM(-0.00)[-0.976];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	ASN(0.00)[asn:3701, ipnet:140.211.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-wired-lan,netdev];
	DBL_BLOCKED_OPENRESOLVER(0.00)[osuosl.org:dkim,smtp4.osuosl.org:helo,smtp4.osuosl.org:rdns,soc-5CG4396X81.clients.intel.com:mid]
X-Rspamd-Queue-Id: 7003119B787
X-Rspamd-Action: no action

On Tue, Feb 24, 2026 at 05:54:54PM +0000, Simon Horman wrote:
> On Mon, Feb 23, 2026 at 10:52:13AM +0100, Larysa Zaremba wrote:
> 
> ...
> 
> > diff --git a/drivers/net/ethernet/intel/ixgbevf/ixgbevf.h b/drivers/net/ethernet/intel/ixgbevf/ixgbevf.h
> > index eada53c57fcf..67d10e6e9910 100644
> > --- a/drivers/net/ethernet/intel/ixgbevf/ixgbevf.h
> > +++ b/drivers/net/ethernet/intel/ixgbevf/ixgbevf.h
> > @@ -82,20 +82,22 @@ struct ixgbevf_ring {
> >  	struct net_device *netdev;
> >  	struct bpf_prog *xdp_prog;
> 
> ...
> 
> > diff --git a/drivers/net/ethernet/intel/ixgbevf/ixgbevf_main.c b/drivers/net/ethernet/intel/ixgbevf/ixgbevf_main.c
> 
> ...
> 
> > @@ -784,11 +865,19 @@ static int ixgbevf_clean_rx_irq(struct ixgbevf_q_vector *q_vector,
> >  	unsigned int total_rx_bytes = 0, total_rx_packets = 0;
> >  	struct ixgbevf_adapter *adapter = q_vector->adapter;
> >  	u16 cleaned_count = ixgbevf_desc_unused(rx_ring);
> > +	LIBETH_XDP_ONSTACK_BULK(xdp_tx_bulk);
> >  	LIBETH_XDP_ONSTACK_BUFF(xdp);
> > +	u32 cached_ntu;
> >  	bool xdp_xmit = false;
> >  	int xdp_res = 0;
> >  
> >  	libeth_xdp_init_buff(xdp, &rx_ring->xdp_stash, &rx_ring->xdp_rxq);
> > +	libeth_xdp_tx_init_bulk(&xdp_tx_bulk, rx_ring->xdp_prog,
> > +				adapter->netdev, adapter->xdp_ring,
> > +				adapter->num_xdp_queues);
> 
> Hi Larysa,
> 
> Sparse flags that libeth_xdp_tx_init_bulk() expects xdp_prog to be managed
> using __rcu, but that is not the case for rx_ring->xdp_prog.
> 
>   .../ixgbevf_main.c:875:9: error: incompatible types in comparison expression (different address spaces):
>   .../ixgbevf_main.c:875:9:    struct bpf_prog [noderef] __rcu *
>   .../ixgbevf_main.c:875:9:    struct bpf_prog *
> 
> ...

You are right, will fix this.
