Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 6860C700C63
	for <lists+intel-wired-lan@lfdr.de>; Fri, 12 May 2023 17:56:06 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id AC61384A15;
	Fri, 12 May 2023 15:56:04 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org AC61384A15
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1683906964;
	bh=BWS+sgwjrNUGTl/l5uF5D37mwscheWgYuLBalcBv+PI=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=mIxag6CcaC6cyEyxBX8FIek7LRcc2rcIosUNVcGtptLEd7PzUF4S2czpIikosLkZm
	 iUXhA+GYR4uIwJO21aGz3T2ZyZfkSdU8uhGHfgcZ0hbB4YgjiC/nkctrBOtR0wL8Mf
	 7h7buaEOInAPcRq42Z42++cw/QV3Z96w2S/Ndw11XG5566zoha9X+5IAU04ogrOjYp
	 oh7Uir9hhemyiRnIbN5MgPIs0MLWElrtJGxzoZSD+im1xBbwOuftpmHkBR9ZUobohb
	 HKCDCYTim7h8WIum/6qrkWIl0Q07HPy+ykQAJKWqlwbaVIRSpqjQ709JpD8GpCRRWa
	 qOmfJ+TpUpRhw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 9nvHkkaEXbjp; Fri, 12 May 2023 15:56:03 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 9970F849FD;
	Fri, 12 May 2023 15:56:03 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 9970F849FD
X-Original-To: intel-wired-lan@osuosl.org
Delivered-To: intel-wired-lan@osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 1EB821BF2CB
 for <intel-wired-lan@osuosl.org>; Fri, 12 May 2023 15:55:59 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id E8301415B4
 for <intel-wired-lan@osuosl.org>; Fri, 12 May 2023 15:55:58 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org E8301415B4
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id mvZEUO74Z6AW for <intel-wired-lan@osuosl.org>;
 Fri, 12 May 2023 15:55:58 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 117F84018B
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 117F84018B
 for <intel-wired-lan@osuosl.org>; Fri, 12 May 2023 15:55:57 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10708"; a="353952795"
X-IronPort-AV: E=Sophos;i="5.99,269,1677571200"; d="scan'208";a="353952795"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 May 2023 08:55:57 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10708"; a="824403387"
X-IronPort-AV: E=Sophos;i="5.99,269,1677571200"; d="scan'208";a="824403387"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orsmga004.jf.intel.com with ESMTP; 12 May 2023 08:55:57 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23; Fri, 12 May 2023 08:55:57 -0700
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23; Fri, 12 May 2023 08:55:56 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23 via Frontend Transport; Fri, 12 May 2023 08:55:56 -0700
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (104.47.55.173)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.23; Fri, 12 May 2023 08:55:56 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=PaHj4BrBJuc4lLeC3fl+gzFu/5/H5iNdleK4r8x0I/GeehyT4NMsj6UTIo2EIleWrRL+lcbnfbHgeg+8VZImqcOqfzs9krqutirrqUma8giWvY6SXVozcT+ut2C6NLssFLeru9dYTdpFV330ZdY0aj7JzHj8cWRrRk6+Jr5ND1JBzgAyX4hkSI7wegMEH9tJLF9FL4Qqx+OtaiER41yaPB2f0q6ONwYa/p6Eox0mVt9fZLHlIdcmTf3zx3UVYQqRK2qfrmzz0zGiMFnmkt02/+4/mmWQeXtOULm8xzOYogCMJiJXo2aWrMS7ulqgl3ShwoiFxVS19vnqF2+092RNnA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=x10h4oycA4HfY8A/6O2ZL/E3RRfcp/eouHZ5DEK2MQI=;
 b=l23aoxS13QLoNEzTknrZXbL7cIC9dSfWsWbAjmAjp+oA2q0huFMht2HG8SsZIGEyb0c8zQtXSehulvTrVypWogT3mL5/bUwN/iWB1J5q9/AoZSvSlAVPBersKoVvL68BgiE1hb8ODty0OMK3N1VlutVE+ORP9ZqRXP4Zn9Fa5Loau3MCuL+lJrHMZY3tWGxHqh5DuQ0Pjv2y8QdcIQH+n3Uqm4x6QZV6e152xgW5J03pCaImxaGzvnJ0lJomO79ebI7YHUvN7aMjtFdXndHPSgTCm8O3tdtJIpzNT3thz+doBfsHtT7qtG9GiVopKQYDIAYHF9ljcrYpYyIE7X6q1Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from PH0PR11MB7471.namprd11.prod.outlook.com (2603:10b6:510:28a::13)
 by DS0PR11MB6517.namprd11.prod.outlook.com (2603:10b6:8:d3::6) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.6387.20; Fri, 12 May 2023 15:55:54 +0000
Received: from PH0PR11MB7471.namprd11.prod.outlook.com
 ([fe80::ee76:10c6:9f42:9ed9]) by PH0PR11MB7471.namprd11.prod.outlook.com
 ([fe80::ee76:10c6:9f42:9ed9%4]) with mapi id 15.20.6387.024; Fri, 12 May 2023
 15:55:54 +0000
Date: Fri, 12 May 2023 17:55:38 +0200
From: Piotr Raczynski <piotr.raczynski@intel.com>
To: Simon Horman <simon.horman@corigine.com>
Message-ID: <ZF5hepLUMDrY5Fuh@nimitz>
References: <20230508124321.2927867-1-piotr.raczynski@intel.com>
 <20230508124321.2927867-7-piotr.raczynski@intel.com>
 <ZFlSwEyiMXMK8uxz@corigine.com>
Content-Disposition: inline
In-Reply-To: <ZFlSwEyiMXMK8uxz@corigine.com>
X-ClientProxiedBy: LO4P123CA0455.GBRP123.PROD.OUTLOOK.COM
 (2603:10a6:600:1aa::10) To PH0PR11MB7471.namprd11.prod.outlook.com
 (2603:10b6:510:28a::13)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH0PR11MB7471:EE_|DS0PR11MB6517:EE_
X-MS-Office365-Filtering-Correlation-Id: 47f6adf6-2789-4eac-fbb5-08db53015da1
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 75SK4hxCF4dzysch3EWh0ACTPsPdGO+z4hOKXU3Nkp3zQBbvLgVpDYss2dM/LJOakje9cgan7L8gDVtAYi0ofrZa6r1W1qb3cyJoZixn7xIfJkTpbvGv7AEY+8exIFAVismV8ZCRBLzmmWEJRZOLM5JmILqSq2389/BJ3b0sYyHpjtpqTysBVocndIP0f4TJqNhar8frY3Tzrb9NHPJfqk3bXuBEheivGVrESc/iGC1g5UL8dbZ2Pmh4GWdfb1ErsNf7dWt5OwclNB1EobbHZdmeoz7Rt7+0pQ4OhQ0xYFClqrYyZ6BBQ2igMbStEBuWKiF7+n9qCQNZwKDLHacd+IUSsqxN5L/lesbfWMEFzO1QDtqfaCwGLMAxtTadVb5r6m+wrJg7VmWt38W6rM1nOI+3obELFeBER1qOG2IycvczpoTXq1Pi4Czcv/mg2H1lgi5J4zYzt/R1KScExkoRB3k74lMVh546pVb68skZWeEW7eOjgNDrkC7KppHrnwcJYjuKmpx2NJCj8fSH0uVaJJJ4LTni1YJvWo3YZPHKH7ATXNsJeXi3hICxtCys/1zY
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH0PR11MB7471.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(7916004)(366004)(39860400002)(396003)(346002)(376002)(136003)(451199021)(82960400001)(6666004)(6486002)(38100700002)(186003)(26005)(86362001)(83380400001)(6506007)(41300700001)(4326008)(316002)(2906002)(8676002)(5660300002)(44832011)(6512007)(9686003)(66946007)(6916009)(66556008)(33716001)(8936002)(66476007)(54906003)(478600001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?Cjzc89WV42NTAVzuFWXyIsr11fGLSh1x7GqDlyUtGB8HmrM90piedO+uNOyG?=
 =?us-ascii?Q?BjpjrB/94n7ZansiKc/wIqx+LAbWOKAYAiCybNmJbRRKcL/a+a//GScDn/2G?=
 =?us-ascii?Q?R5q0XzQz4tQn7HcbD4LjMjT3fne7clWEJvNdAzt0WzGUDFYNvIarplzB0w82?=
 =?us-ascii?Q?qFFc85mMG0VQTFr8tNDdOJhfP2WKyY/qfhsz8ehLiT5uvECx4+17AoiVA/Z1?=
 =?us-ascii?Q?khA3V13qt2kfdnZcGePmlB8CtiWE1dsCtqy/w8FjgW0/EIVXPgBD0vj6oJPQ?=
 =?us-ascii?Q?QCDPOrsAHj6wD51hsdwZSwPPWBxC8YZqkofZg79HP6uFDdqrRCuk7ACpo5oy?=
 =?us-ascii?Q?d9cmssyewOXCamIYa3ibGsZ6CeauPdH/XKa/RGkD5QiCNTBTUIjuDMKsKIyV?=
 =?us-ascii?Q?ZkG6MOpAHYcQ0tEcZENHnbsYrKLKxSV1beXaknPb5rubu3m73+ZmzYVMUkFm?=
 =?us-ascii?Q?9AKbDw/0s26Dx0YUuDPjTBd0v6H/mXuswbxT6zbAn7m3+uCtcKP+oAvGI7X9?=
 =?us-ascii?Q?KNy3/YlyGRV4GUXS/HbyLgw4BPa3krtgAk13bT1VxlHY2U8qScAtxAlBdKOK?=
 =?us-ascii?Q?NT889tZ3sEMtNS3iePWrUKfjHCjOOwskljGYos3/htW/a1z62D3Jfb/I4gfX?=
 =?us-ascii?Q?byN+u5wIQWkOE5ymOYFje7/J/oyY7gmHPaDs3zLUUVqSFy2Xeqm4uMeZfv5n?=
 =?us-ascii?Q?a+9LofDkbWNxTWDkycJphKnjjU/FoqvtqLxO933Ys8OmFyK+6RLXLheB78sb?=
 =?us-ascii?Q?qDCst8kUHTrJisDYIixwrxh8OoIraYp8Z2yTPiTgv9uM7C7XxWc30bqeIvv6?=
 =?us-ascii?Q?fccthFZ4JOgdJTuH/N9t5mbE0G475aVyH6FYchW+T4HqOhySQc4dd6ompQl8?=
 =?us-ascii?Q?Xsspoy85zy1pB63Tp4VjUcBlfGCfPsNgeit+a6+nYKJnj2p+/YR0tIwP9sEp?=
 =?us-ascii?Q?NDGA1CcMG1ziLvu/ZRZ3cc/hT9JL1RBOk+b0noH4NomoI0cvyLZb9igkfxrY?=
 =?us-ascii?Q?hJvEEXX6Dplg/Nj7xhnTQT/rHalgt1xn+ft5LBUVZbvQcVAdp+P93TZVBa4S?=
 =?us-ascii?Q?rYM2WoPZnlrJy+MYYtCt59YAA/rMBoLIDs3Xjvbuo19rVpPzI+8dJAG8v+Gw?=
 =?us-ascii?Q?oYZ8N10f2BJqyDKwDZuq0jKkwecQnMedm3NSgYlP9ChCSwkL/mT7XjD1LCsX?=
 =?us-ascii?Q?SL5kGWanf3yaU9mSAsRJ0qFw5mlo0ArKzBr/cHC1xDe75o6F88MGN93kPaK4?=
 =?us-ascii?Q?dekJboxmuPQ8VX06qtspqeEy20iNGaTYZ6qMOj7NLUfBomMvmWowwlAszaN3?=
 =?us-ascii?Q?j3FSIu2m98SNCQ4a1gomKlJOLRYw+1NXgVd1AICtXo0ma8i5mDu/Vf4bA0WD?=
 =?us-ascii?Q?j8dD+rIfbEIfXHq9guNMpRLD+AcOvgQLCenF8iBNJoV2BuRgT2XJR04hSQbP?=
 =?us-ascii?Q?bcl7+mtsx/7ucEFQxEQ+70LUfTJaSQ+Ptx4MKxnwUxEoZHcCSpUEpk1tmQB8?=
 =?us-ascii?Q?5ThSfbcd5aRtWOunbq+PCvfsv7GLEbZBOEV2ZnWPmFI/BlpeEE/2woze+Wjs?=
 =?us-ascii?Q?OMGd9JjPDtJnBO9vYsyxoKgxA9mNcMPzHUb2aehji50UdLfuPZskiOD/isAP?=
 =?us-ascii?Q?iQ=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 47f6adf6-2789-4eac-fbb5-08db53015da1
X-MS-Exchange-CrossTenant-AuthSource: PH0PR11MB7471.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 12 May 2023 15:55:53.7704 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: UYZFRhswsW3LPDJzrxjCcTzaVGC5V4JAS7mptV2ObGwCB1vtO0o8BLNj2e8sTgZvOzeAwcVDpFAbO0MAQq+WeTHif/vCKfWEWXucce8gUz4=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS0PR11MB6517
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1683906958; x=1715442958;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=wtW9q60YUAlm+LaPz1Afsvb+muCydf2wNYLxq0aMS0U=;
 b=ZgGgE9RfJEpXkVUCQ5rJA1VoPZ/7Q0iVwWUHKfpAwdRhZHv07ijQXkdA
 et/n5T0r7cr3DZWRblHUiyr+JVB0mDV4u+ELWVsiVrPoIX+hkaLCpJEza
 /QVfkxdhoarQ5spIeP+137xdzZMVoz/5kGO5oox+LNfHtWy3UfTF4dLR+
 p6qmKesQWWbShU0myhk85oSz4Zza8dU0nbPTYfjGN8sUj9TfPeRh0vGfE
 i53Qhvqqg+/UnQBZxYXxbkqGti4zkyLEQ/ZHQ3dC+c0dHlVaPIUXPIs9m
 8A08Od84gs9NE1NGrTiFANDeqpkUY65nMRhR5R+NT+1wsip0eRVcC8v7k
 g==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=ZgGgE9Rf
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net-next v4 6/8] ice: add individual
 interrupt allocation
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
Cc: "Swiatkowski, Michal" <michal.swiatkowski@intel.com>,
 "intel-wired-lan@osuosl.org" <intel-wired-lan@osuosl.org>, "Brandeburg,
 Jesse" <jesse.brandeburg@intel.com>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>, "Saleem,
 Shiraz" <shiraz.saleem@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Mon, May 08, 2023 at 09:51:28PM +0200, Simon Horman wrote:
> On Mon, May 08, 2023 at 02:43:19PM +0200, Piotr Raczynski wrote:
> > Currently interrupt allocations, depending on a feature are distributed
> > in batches. Also, after allocation there is a series of operations that
> > distributes per irq settings through that batch of interrupts.
> > 
> > Although driver does not yet support dynamic interrupt allocation, keep
> > allocated interrupts in a pool and add allocation abstraction logic to
> > make code more flexible. Keep per interrupt information in the
> > ice_q_vector structure, which yields ice_vsi::base_vector redundant.
> > Also, as a result there are a few functions that can be removed.
> > 
> > Reviewed-by: Jacob Keller <jacob.e.keller@intel.com>
> > Reviewed-by: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
> > Reviewed-by: Simon Horman <simon.horman@corigine.com>
> > Tested-by: Pucha Himasekhar Reddy <himasekharx.reddy.pucha@intel.com> (A Contingent worker at Intel)
> > Signed-off-by: Piotr Raczynski <piotr.raczynski@intel.com>
> 
> ...
> 
> > diff --git a/drivers/net/ethernet/intel/ice/ice_base.c b/drivers/net/ethernet/intel/ice/ice_base.c
> > index 1911d644dfa8..7dd7a0f32471 100644
> > --- a/drivers/net/ethernet/intel/ice/ice_base.c
> > +++ b/drivers/net/ethernet/intel/ice/ice_base.c
> > @@ -105,8 +105,7 @@ static int ice_vsi_alloc_q_vector(struct ice_vsi *vsi, u16 v_idx)
> >  	struct ice_q_vector *q_vector;
> >  
> >  	/* allocate q_vector */
> > -	q_vector = devm_kzalloc(ice_pf_to_dev(pf), sizeof(*q_vector),
> > -				GFP_KERNEL);
> > +	q_vector = kzalloc(sizeof(*q_vector), GFP_KERNEL);
> >  	if (!q_vector)
> >  		return -ENOMEM;
> >  
> > @@ -118,9 +117,31 @@ static int ice_vsi_alloc_q_vector(struct ice_vsi *vsi, u16 v_idx)
> >  	q_vector->rx.itr_mode = ITR_DYNAMIC;
> >  	q_vector->tx.type = ICE_TX_CONTAINER;
> >  	q_vector->rx.type = ICE_RX_CONTAINER;
> > +	q_vector->irq.index = -ENOENT;
> >  
> > -	if (vsi->type == ICE_VSI_VF)
> > +	if (vsi->type == ICE_VSI_VF) {
> > +		q_vector->reg_idx = ice_calc_vf_reg_idx(vsi->vf, q_vector);
> >  		goto out;
> > +	} else if (vsi->type == ICE_VSI_CTRL && vsi->vf) {
> > +		struct ice_vsi *ctrl_vsi = ice_get_vf_ctrl_vsi(pf, vsi);
> > +
> > +		if (ctrl_vsi) {
> > +			if (unlikely(!ctrl_vsi->q_vectors))
> > +				return -ENOENT;
> 
> Hi Piotr,
> 
> Smatch tells me that q_vector i leaked here.
> 

Nice catch! Thanks. Will respin with some other fix from my side as
well.

Piotr

> > +			q_vector->irq = ctrl_vsi->q_vectors[0]->irq;
> > +			goto skip_alloc;
> > +		}
> > +	}
> > +
> > +	q_vector->irq = ice_alloc_irq(pf);
> > +	if (q_vector->irq.index < 0) {
> > +		kfree(q_vector);
> > +		return -ENOMEM;
> > +	}
> > +
> > +skip_alloc:
> > +	q_vector->reg_idx = q_vector->irq.index;
> > +
> >  	/* only set affinity_mask if the CPU is online */
> >  	if (cpu_online(v_idx))
> >  		cpumask_set_cpu(v_idx, &q_vector->affinity_mask);
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
