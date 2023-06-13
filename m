Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 13CA472E3CE
	for <lists+intel-wired-lan@lfdr.de>; Tue, 13 Jun 2023 15:12:02 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id A465E41705;
	Tue, 13 Jun 2023 13:12:00 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org A465E41705
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1686661920;
	bh=JQq515SyjBb+l9w4guL/COLzQBEYXN0IvyEvdSeF1rc=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=Dfc/b9nnvnC73lqB0dtRZpq+H2EBTWK4+m/inwWxbjyscAaZMnqhXzTfHMoOEjGCF
	 Guf6BLLUfNvsjkvq0lUofZ9Awm8hDeuY0//+1sfegwBrlgi3r6E/97WDja1Ebwj5+8
	 z+OOvTmWWQTwPj3tHjQxobcDMdt6EFpsOCUb9+xojg8EX9QChShpMCZhgKLPC32x3B
	 DlANd9X0JdDz7q0JDctEFpRWTonixP0GgYsSQH1ismi5mYeoemt2i+7cuS9ybze1au
	 NoR7y1KjCwMsu8JOG6bd3M/iJyp3oF3sWH16/mYe6Vo7Nb/unZ6MOGFjm+iMJ2QKky
	 jymNTzF0ri6Ww==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id NAsnIERmDd5d; Tue, 13 Jun 2023 13:11:59 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id ADD15416FA;
	Tue, 13 Jun 2023 13:11:58 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org ADD15416FA
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id AE5241BF2FA
 for <intel-wired-lan@lists.osuosl.org>; Tue, 13 Jun 2023 13:11:53 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 82D3A40A01
 for <intel-wired-lan@lists.osuosl.org>; Tue, 13 Jun 2023 13:11:53 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 82D3A40A01
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id U-fmgl3Xs0gj for <intel-wired-lan@lists.osuosl.org>;
 Tue, 13 Jun 2023 13:11:52 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 1AE884054A
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 1AE884054A
 for <intel-wired-lan@lists.osuosl.org>; Tue, 13 Jun 2023 13:11:51 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10740"; a="355820589"
X-IronPort-AV: E=Sophos;i="6.00,239,1681196400"; d="scan'208";a="355820589"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Jun 2023 06:11:51 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10740"; a="662003661"
X-IronPort-AV: E=Sophos;i="6.00,239,1681196400"; d="scan'208";a="662003661"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by orsmga003.jf.intel.com with ESMTP; 13 Jun 2023 06:11:50 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23; Tue, 13 Jun 2023 06:11:50 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23; Tue, 13 Jun 2023 06:11:50 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23 via Frontend Transport; Tue, 13 Jun 2023 06:11:50 -0700
Received: from NAM04-MW2-obe.outbound.protection.outlook.com (104.47.73.174)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.23; Tue, 13 Jun 2023 06:11:49 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=dB0nrF4X476zoGnYir4D1AoV63nw/8iM5W2HGs6pPDhln60xxVVrHW4AB9bVFy86ynyWN1NNFiOq+9PQiY+7cVNZ4NBlBwbD5mQypNFgRGx6bZlVm3CNiHOGug/3lFNOx+hRMo6wqCw1DKW2N6o/WrxLrFHJcLMeQCaIaGBtW2AxQDY9eZd14uRyZoz5jCWliLLbxXSESmyn7Ep5yi3A5NtU2upQMwtiKs09FxVrntsBb5zDFN9o9I/4hk7mIhRqLVMm4T01eOxxDZ6n1zdS6IRlNHhQ6Nxme9lojh0KFqZ2T3iP6Andc2IPB6ancW3E1JJE3K6c//3ujsvivcdJtQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=n8pALE3vqF9UaQAt3ktSgDdh1cd9ajdaapFt0rgFUC8=;
 b=hag4Z/POkbu3WHmlzuIq+PvjnLgmmbK/kPxm01tdIpsH94rPx1vf0lY86f2V73LmePXQbuZtE2RetFejNvoL+cCm9PW5ROMJwt2Lki928LXqJj3Jh97QqWXY7cYBLTvcNUcPPsAOd6hmyIC6wmR2+iQRAyObc2QnvvY6twJjw8JQJlTz73LigUrmh5lfba048HEg7+dhlugXSvYyGLFXAdXx6e07BCPMCgXv6c8m/vGKVyARuGkNibFf5NpaIxClIUNsKf9DHjYjKlNJ08T5dTBMC9g/8REKNdpQEKC2uczeylZmuhOoNIP8xxkZV7UW9jc+B8kSKlMHcvKRyVu+ng==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6117.namprd11.prod.outlook.com (2603:10b6:8:b3::19) by
 CH0PR11MB5563.namprd11.prod.outlook.com (2603:10b6:610:d6::22) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.6477.29; Tue, 13 Jun 2023 13:11:48 +0000
Received: from DM4PR11MB6117.namprd11.prod.outlook.com
 ([fe80::9e4f:80cc:e0aa:6809]) by DM4PR11MB6117.namprd11.prod.outlook.com
 ([fe80::9e4f:80cc:e0aa:6809%2]) with mapi id 15.20.6477.028; Tue, 13 Jun 2023
 13:11:48 +0000
Date: Tue, 13 Jun 2023 15:11:40 +0200
From: Maciej Fijalkowski <maciej.fijalkowski@intel.com>
To: Piotr Gardocki <piotrx.gardocki@intel.com>
Message-ID: <ZIhrDFUlhbk7e1LT@boxer>
References: <20230613122420.855486-1-piotrx.gardocki@intel.com>
 <20230613122420.855486-3-piotrx.gardocki@intel.com>
Content-Disposition: inline
In-Reply-To: <20230613122420.855486-3-piotrx.gardocki@intel.com>
X-ClientProxiedBy: FR0P281CA0229.DEUP281.PROD.OUTLOOK.COM
 (2603:10a6:d10:b2::14) To DM4PR11MB6117.namprd11.prod.outlook.com
 (2603:10b6:8:b3::19)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB6117:EE_|CH0PR11MB5563:EE_
X-MS-Office365-Filtering-Correlation-Id: f73f8c4e-9bbc-4c8e-dd6e-08db6c0fbe9a
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: C6M+Jv9iOhk2CIWR+gxqivD7EhxM9IifhDwh+sg9mYIh4ZAsB1qYBaq+Pb88dRxvBDul7es37B/L2eKzn2CLx4W96mcABPDNeUWYnWK5tKTddQcITwxn4Zc7LK/Nk80vUJ3/f2ZynSfb3LfzJsYJivm1j+6Bq0yKQ9t5FNJwkzkhW1H0gWJDp7aMaGgtviL0G27gT7rK7x6wPGcffCMv47hG2s2s2H8TSHOU0yOrCZG7UpnTTYrAxtWI6VkkLlqwThCIKtAlqq9SWMgc195jF10kYmUA0NzG8ctWjeKmJaZ4cXu+mBWeC+Y4eXLmQwJ1aWTxKzdtb7Gvj2Zs74K/iJZLrCxC8IIku9RK17vpjsOFk8Xqc2/9S8sAdMPE7YjINg5xbl0snMiQCILNL2K0xc3cpBo+iICJzCWWEtvGSdzWnZtd4PGAL0HUADFu6Nhgy3AevDtrwx37XwCp7EFHapfM3h3zJ7a5jWFCUcU0/z6RhIKQZmgdUvYW4ncvkjjge25FNilSsgMGh0w7Uza+UYXglqd1k9kwYhJbQIa0/lb3K+B4jtdrPZ6L5gsGyJ4K
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6117.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(7916004)(39860400002)(366004)(376002)(396003)(346002)(136003)(451199021)(83380400001)(82960400001)(86362001)(38100700002)(33716001)(478600001)(4326008)(44832011)(6666004)(6486002)(8936002)(6862004)(2906002)(8676002)(5660300002)(66476007)(66556008)(66946007)(41300700001)(6636002)(316002)(186003)(6506007)(6512007)(9686003)(26005);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?CH2IPMxK2mrv8ScDsYfiY63srzKmFI7HmojcNeK00S+feqAUex7r/nSWOX5D?=
 =?us-ascii?Q?zI7elHrTkyIy2emlVqjH/8OpYNWJPJT3vODOUyR5PIemGNDdSuNx3+EBTQZa?=
 =?us-ascii?Q?+TkPvJve8pZKpApcferiLwxOWv4nX7F2XTKeLjJNGqIBstYO+DhsBEOhQ4ZA?=
 =?us-ascii?Q?/uhsLs1xcWzzxUpEetiMcuXaOT3ZT5dH7dZ89d36dQYwOWrg7aY2StBLzWjo?=
 =?us-ascii?Q?VSN+MCpQ2H3h6gnOUGzPMVJGym0wKeCXM5MlWhfrhShbDVwoD8wZQV3mtqnE?=
 =?us-ascii?Q?pQsYeyKIR/5AcqXQoH83t8HCbvTWcYo6q2X4qAbco87mh4yQCkh/7LjkkmFm?=
 =?us-ascii?Q?h/0dET38SbzyGTOFDvnhj1VkftNZwb8NzHD2/DVHBfs3jpUU/WFtE1RSr07T?=
 =?us-ascii?Q?1TfwUt00bnmHAq+v0mX8CYW8hIacAnauE6Kf4af7Dbz9EJ0Bgj8CCZRZ7tsI?=
 =?us-ascii?Q?699q+b7N5YRVaOPb7vtg/Q1ATCJwcaHGBoUs6r6PM61x8Fjw+8YXqaJaNfB6?=
 =?us-ascii?Q?EfoKfxA1btaRURgSHvXzHrdbsTC6nCQZZh7YpGqOHPy0tL9bY+AxEsXacCDj?=
 =?us-ascii?Q?1E6KHrxf1sgth9uVdjYKsm3V7pNdjl0eGMIkotXnP2sibK+fasCFADkGnoPw?=
 =?us-ascii?Q?Z7u403TOcbDlggqzx6MZWzEYFGlOhxpruAVkezZPwlZ0TJSUefx1ATXttPAE?=
 =?us-ascii?Q?pY3B7p7eAatrTsMf7r0ciLhvm7Ik3Wkt8+Oevp9SBBvqw31j3rXnGsDLU3p/?=
 =?us-ascii?Q?9/Pt9q68e4feix0Yv9t3dIuBlgpSvUjbG28hHA8bC9obF9I/riOb7owBUnom?=
 =?us-ascii?Q?WC8BLItxK54YsDHxdWxYRNJrwmuBPtF4MYooWXK+1VUu+W5xwGRfcV1hArmx?=
 =?us-ascii?Q?lIs7Xn5E7Qbre4wjcAsDkUvJchVzFDNbqbaHopwxAVKI+Ud8ISOmGc3pp6B8?=
 =?us-ascii?Q?XVndWDo4R75A/2xMoOupKP2qLpVHM1rPkd/3s18P/vyS7d0RhXdMlXE2FXl6?=
 =?us-ascii?Q?P01n1dJRQSj371POn6C/1IGHZEUXDPMcSty6ELBSBGbvw+ifH5Fylv4JKAS5?=
 =?us-ascii?Q?9EXiShGWwv5JoWdxFRrc/cISBMJCqVNYdBc27OOumvBWCDDdc3PBgh3fobpL?=
 =?us-ascii?Q?T6+aLZfUU6KFMgOD0hoM0Du1Q4Q6rp9LOHCcdBRuyap+eJVWldyR9UQzwJKb?=
 =?us-ascii?Q?ipPnrKEZ95py7blnOOmXSfKKE6N4DhsEO3mLRrnDj8a3TfDBGLVsV/PVuBQq?=
 =?us-ascii?Q?nvHAxwAC0EALPaGjiJB1yoMj9PiFTzaPHYED09qMK+nT9pbOb32vl+whG+BH?=
 =?us-ascii?Q?7ik6ZS/UZJp+tmBWA/wsELrPjeqLlZvkYEf2wukxSUshrea+HThW5fiHE2aV?=
 =?us-ascii?Q?PgW7GcgUgu2nwzdFBMwbt7tnMFYGCq6QjauJqIs0xAas4a19+3O0RWiFBGzT?=
 =?us-ascii?Q?FoOEzhmjo5JylbCm81APp6VqLjh2ExUlNhUIWCRd364MbBbCR0UQdEjJCLPJ?=
 =?us-ascii?Q?sUiJGpd1q9UJMH1y7XIxOCYvxR7B5mSMJDSxIaXFXo7qmNW+XZQXoEjxuRF1?=
 =?us-ascii?Q?VHuLzlQNOxnzNSea1lJFbLELgaUZSIUer1RSFkauWOhZtvyFJ3Xor4uyH7iI?=
 =?us-ascii?Q?BA=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: f73f8c4e-9bbc-4c8e-dd6e-08db6c0fbe9a
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6117.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 13 Jun 2023 13:11:48.2728 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: XAnH7m8q2ubJLQnOtTn74kuaJx88tCul/4KVxj/cnfnQOYOFY41lvcsF7+LZ91DZf7aoN/E0qyu5cMhKb210ChN3gnUf7aoT9m3sYvM34Ow=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH0PR11MB5563
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1686661912; x=1718197912;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=UHn1e8zpLSMAnnbOsPe8oDYkmUUeQbM/3fQYcGrZ/Cc=;
 b=TypZoAbOVSZpbQP03VpCgvrWbAt9PY+bwfIBKlp0gDVuneO3vvnMpBbH
 gEsSgyF2I7C+6bR28zkkCZNYm6XzZzSlWse24r+WxGwTGWKt9SnWitt80
 iqMsZOoSLMlaLUWTz52Kp+FO2upMXcmy+as1RN5XcbSEbLMDake8aUqgF
 IX6E3zCEFSvl9S7SW2Mg2eXmAm5Mj4aXNLv0x6CEdBuZua5d9lPZAgkmx
 xp5yPqg8/QKIDC7Ixp9gGjfKtmuoGPb27yDlwToEGHHJcBnUEHT+E+36X
 mJCPI2UyxNowJt8W6vndy8tTAlxgMTl/8+KaPCxYiRn+olgJUlj0L59fT
 w==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=TypZoAbO
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net-next v2 2/3] i40e: remove
 unnecessary check for old MAC == new MAC
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
Cc: pmenzel@molgen.mpg.de, netdev@vger.kernel.org, anthony.l.nguyen@intel.com,
 intel-wired-lan@lists.osuosl.org, kuba@kernel.org, simon.horman@corigine.com,
 przemyslaw.kitszel@intel.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Tue, Jun 13, 2023 at 02:24:19PM +0200, Piotr Gardocki wrote:
> The check has been moved to core. The ndo_set_mac_address callback
> is not being called with new MAC address equal to the old one anymore.
> 
> Signed-off-by: Piotr Gardocki <piotrx.gardocki@intel.com>

Reviewed-by: Maciej Fijalkowski <maciej.fijalkowski@intel.com>

> ---
>  drivers/net/ethernet/intel/i40e/i40e_main.c | 6 ------
>  1 file changed, 6 deletions(-)
> 
> diff --git a/drivers/net/ethernet/intel/i40e/i40e_main.c b/drivers/net/ethernet/intel/i40e/i40e_main.c
> index b847bd105b16..29ad1797adce 100644
> --- a/drivers/net/ethernet/intel/i40e/i40e_main.c
> +++ b/drivers/net/ethernet/intel/i40e/i40e_main.c
> @@ -1788,12 +1788,6 @@ static int i40e_set_mac(struct net_device *netdev, void *p)
>  	if (!is_valid_ether_addr(addr->sa_data))
>  		return -EADDRNOTAVAIL;
>  
> -	if (ether_addr_equal(netdev->dev_addr, addr->sa_data)) {
> -		netdev_info(netdev, "already using mac address %pM\n",
> -			    addr->sa_data);
> -		return 0;
> -	}
> -
>  	if (test_bit(__I40E_DOWN, pf->state) ||
>  	    test_bit(__I40E_RESET_RECOVERY_PENDING, pf->state))
>  		return -EADDRNOTAVAIL;
> -- 
> 2.34.1
> 
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
