Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 834736EF7CF
	for <lists+intel-wired-lan@lfdr.de>; Wed, 26 Apr 2023 17:36:02 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 15A8760F46;
	Wed, 26 Apr 2023 15:36:01 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 15A8760F46
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1682523361;
	bh=FWazzLTKcJTkil+gInKh/e5iu2UUH2ebKjwPkG8RJ2A=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=wIrAaWK0AVXKFkAz7FjVjafFn3qhW+mIM/WbIVR8xs1JvdsHpxFfv0a8bqqesGh0H
	 MlDodRAKwBYxVW5LI9rDZO9KZoDYtee7Iym58+ZRs+G8yoOD7Rv0CC10dOfbMTalEC
	 54un8k2/xrnfIe+j8lbvag4J1EldrpGwg2KMnIjICIO1y+kgu5qPIEzYSrwxTNuFv0
	 vLmBbt87nW7RH0HyO2qy5EJ1FTjCulZCzIWx9cf7ofx5M9RYlUMEwRO/ZCOCyEg/Ev
	 9oWQFkrtUTwVObhva+wN4UUKF/e0AiyK85n2jeHKGgmaIkVzRf8rPX3OPCww5wXAbN
	 1xpMVvu1nMavA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ZA3GC6PtkZGU; Wed, 26 Apr 2023 15:36:00 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 1178260ED1;
	Wed, 26 Apr 2023 15:36:00 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 1178260ED1
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id A29431BF315
 for <intel-wired-lan@lists.osuosl.org>; Wed, 26 Apr 2023 15:35:55 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 8486A605B1
 for <intel-wired-lan@lists.osuosl.org>; Wed, 26 Apr 2023 15:35:54 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 8486A605B1
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id m_5c9MYMcfmX for <intel-wired-lan@lists.osuosl.org>;
 Wed, 26 Apr 2023 15:35:53 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org CE66E60ED1
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by smtp3.osuosl.org (Postfix) with ESMTPS id CE66E60ED1
 for <intel-wired-lan@lists.osuosl.org>; Wed, 26 Apr 2023 15:35:53 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10692"; a="375101806"
X-IronPort-AV: E=Sophos;i="5.99,228,1677571200"; d="scan'208";a="375101806"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Apr 2023 08:35:45 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10692"; a="818153047"
X-IronPort-AV: E=Sophos;i="5.99,228,1677571200"; d="scan'208";a="818153047"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orsmga004.jf.intel.com with ESMTP; 26 Apr 2023 08:35:45 -0700
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23; Wed, 26 Apr 2023 08:35:45 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23; Wed, 26 Apr 2023 08:35:44 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23 via Frontend Transport; Wed, 26 Apr 2023 08:35:44 -0700
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (104.47.59.175)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.23; Wed, 26 Apr 2023 08:35:44 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=AytzQV+FjqGy9OxhsyZfwlPmRXiILEZNNYzQciWZ69BydjhecIPjfUoThw8xaUoFAFORabkmph2mbv6ion41E6GOBv4tHRxA8b9oQOGdUsB+JmSxOVbeiUJxhDQKVnMwqKGdp/5H9gWp00eRXLFi1ByloNZhbos1xvAcHjpJEfiKO0ITRx9QuL9olkBnnSqLIOao9ABV44CMHQO/t1Oun5a8WVT6X2BKEeMbw95pY67sMJYhmzd6FzMCPu5aDhORlejZP5Yz0iAA0wa6Z562/PEEOyG3JGQ9siGBacbNOK7iYQa7EbSt0QkJH0XO0gTi/npq4COsrrjgBVUAEce5SQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=WKQOo2PpXCFbxL8L+bJ9YOOuhf9J1xTdFUsJsrNSFgg=;
 b=DiD/vP0dytj3jn9NoHxIb8cZ6qUYmI5iwJ/7O+c0M+5l+GXmzQcQLzUQJ50AyrOvjAF6hX8fwHrlX+elBltE4rBfTBYK53HWu+UJW5qLbwu3T0k2/lWNBw3zNh9JwWcMyeIBDVHRd2mK461N8/MoX9ip2ZqKj6h7LzhcPuYWuBHv3Lia0DqSKGKCwuQ6m86B7N6GSnNuxUBqYGbrtA79nP97vUrJhKPSqpFTeflkvvuW1gWYUdRsOKVYo1s7WykQjefPY1Hfmjz1JIk8ZxlEsGLtgMZuEtbOfMt7gaktmXtJnP1J6II44hpzNBhAa0x7sKroqypBbHphCz/KT/Y7qA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM6PR11MB2937.namprd11.prod.outlook.com (2603:10b6:5:62::13) by
 BL1PR11MB6051.namprd11.prod.outlook.com (2603:10b6:208:393::12) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6340.21; Wed, 26 Apr
 2023 15:35:42 +0000
Received: from DM6PR11MB2937.namprd11.prod.outlook.com
 ([fe80::f56d:630e:393f:1d28]) by DM6PR11MB2937.namprd11.prod.outlook.com
 ([fe80::f56d:630e:393f:1d28%3]) with mapi id 15.20.6319.034; Wed, 26 Apr 2023
 15:35:41 +0000
Date: Wed, 26 Apr 2023 17:35:33 +0200
From: Michal Kubiak <michal.kubiak@intel.com>
To: Ding Hui <dinghui@sangfor.com.cn>
Message-ID: <ZElExd5bAL2FCpIB@localhost.localdomain>
References: <20230419150709.24810-1-dinghui@sangfor.com.cn>
 <20230419150709.24810-2-dinghui@sangfor.com.cn>
Content-Disposition: inline
In-Reply-To: <20230419150709.24810-2-dinghui@sangfor.com.cn>
X-ClientProxiedBy: LO4P123CA0547.GBRP123.PROD.OUTLOOK.COM
 (2603:10a6:600:319::16) To DM6PR11MB2937.namprd11.prod.outlook.com
 (2603:10b6:5:62::13)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM6PR11MB2937:EE_|BL1PR11MB6051:EE_
X-MS-Office365-Filtering-Correlation-Id: 88ef5796-d4b6-43d1-1b27-08db466be45b
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 2zsS9+x88Z8e5cim9j6NHt14Zon48Z8pHKd+MzcCBn2oSK1a56253s7eVx8fjyi4oHe1e7ntPx+VQS5XJRKm8vMv6c0n6DnR7yfVU55q1Osrhtb5zD0SVhsfWG7uf1BF8q2Tg88X2AoqahrxL+qrtTiGYuvJ4Gjg8Y4L7CT5xdIU+nMlzVf64+MG67+o6J6VJRVJI84TINUql+bUG6N2qO9sHPBxW3MqTrvaCnwKqZr4w6rQ0W8SzjebYrHUsSkP+S5gtO8IDojc30zx30CBRFcpqcRCttMAiF8Fp1Rl44j10EcFuAajD2HHmwLdZxoyvx3JmTEwrk/S+9z8nHKBvQt5pzLVWVe9DOLZtA+WbGOMIkZb520EvenG5voiOo+BBsWoKtmvSAfQMxsPRqAqD++rWakAjukKpheKFMiiA8v4DXbXDWOjGwgh32m8EED1WH9kCHosWUbP/eiLzcyk+a9vHmYzh6H1b2tlzyvWn313f72IEtaLg4c6+gjJAySZhVIUxpseBV8xq8EJpy4h9OsrljqHs327PBY2QSO9JK8=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM6PR11MB2937.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(39860400002)(366004)(396003)(346002)(136003)(376002)(451199021)(9686003)(6512007)(6506007)(316002)(6916009)(4326008)(83380400001)(186003)(26005)(41300700001)(478600001)(6666004)(66476007)(66556008)(6486002)(66946007)(82960400001)(38100700002)(8936002)(8676002)(44832011)(7416002)(2906002)(4744005)(86362001)(5660300002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?72ElfKa0uFm26n4CINGysmirZxRGmhU32SvyAPkCdvBf/Jr7VyYU+LHj5Ndp?=
 =?us-ascii?Q?cNrbQXGbn8iyvleXhP65OsxUE48mkM/OTM7BuTPBSXFoPj96ZQbYuwRbXs8d?=
 =?us-ascii?Q?nHG1T4SXdvm0abnmtQJz3yosrMoby5TZMblCO6HtU7vvWOc4mjFFanG/0UVY?=
 =?us-ascii?Q?iKUrebv/dQkooBkQ2DYv0wZ6+915SOx3zaLkBcV70HEIshVp2HWuhHzUX3hJ?=
 =?us-ascii?Q?luuCTUSWH+h0FNG+aZU77qAAG42bXwbEa7YNlpg6v+N1frGWJDFu3YaEaDqr?=
 =?us-ascii?Q?8QCo/uRzKLlB7vFQCld8ZKo+47tGC5eVPshm6yosvP/NelfGk+FJzxRiGHSB?=
 =?us-ascii?Q?ufy6GYjq+azhVkMo5X2RfdH3aIeXDJdj4zIWUmKUYrg+KeWKuF8aeCIlwDju?=
 =?us-ascii?Q?hr2rUaKVJfVTh8Hi1NobLL0jtbBZqNxKjMSQNRyjRBT6J/k88x+O85jxESt1?=
 =?us-ascii?Q?0usKO4yBb7i2Y99QztwT4KsjHFZonGp4xXMMbLpdtCcayKbpbTAvF8hPHoNO?=
 =?us-ascii?Q?ECAVX+maamR6eNSlYJ97rXgcO/HHWWF+xgOfRq5wK1xe3HHKOSjFmzObPMqD?=
 =?us-ascii?Q?rv3iSofVDdmTML7/lp+wYhkS+X21qAaNBi0pcOruSWAHT/qyix9rCHom8K8e?=
 =?us-ascii?Q?eyPUPmWn+bTIOVybFhAUj6iYoblSXij5jx7Hn+Jr7AIt8WnuWE7gSz5ayOIK?=
 =?us-ascii?Q?GBDQtt3Myngq9pHxckJ7+ilDeASSS5MsaHVyyO6OYTObaalmhGqhKORcrCZo?=
 =?us-ascii?Q?ijHRLx5nRGqshR8bfU1N/jhVfcuFSpN0HZLv2qqdSrPyPqxOLBufH434+YJ+?=
 =?us-ascii?Q?6SkArgrKCeudhajY560X1aMgn2xp+uTkfcxk73LJIAkS/PJh131OyrO+Ymtu?=
 =?us-ascii?Q?QvEK3Pv38QqAOARxvcU5MuAnypVYOuKrsemaBIOj1eU450DFGXgSfk+jJ+yX?=
 =?us-ascii?Q?W4b1/UPK//QcOYPSqkWlYEYHQC+uoFeY8Rq2FVc0Zw4FQwUxZUQmokgWy040?=
 =?us-ascii?Q?XM2C6KCB6ptgIDjbVdjCIAVXY30GQUCBO/ya+3kYEUBvqyEuuENVU8zgcAp1?=
 =?us-ascii?Q?hBLGEgLIvv14Ej9pyPEXhOsnCEhb3JXmf1/xgIYQRjGkUIlathupKYWm7V+y?=
 =?us-ascii?Q?QeWbQdtx8w6ybxlDKjpOLByypiLe9DeuCYutlat+liyx/Sen5DPtahyGIdO4?=
 =?us-ascii?Q?gqBNB+BFGgWwWjfJy+rCNMHPggCfr4oVVhtbiuQC6EQYsohbCfxunH82MJa3?=
 =?us-ascii?Q?1U2xnrgujdxF2drAXs3jXFx+n/ukOnIp7OP8DRNHBXTRoE98GaS3295xbEcv?=
 =?us-ascii?Q?P6rCK9z3ljmmSLW25irngYxE2eeSiiBWcQC3WrlBGQxcYICnrwFRFzSXn9OO?=
 =?us-ascii?Q?vn1sKkYFY8ZRya1koCDqSXaHOBNZV9be7Iy70jQH/iFWt3xfS4DoT4sxdsDe?=
 =?us-ascii?Q?G7Jf4lo8znl05FvzBZ6gGYRdvnTFtP+YCmM5RjrHRcDRxUp7v+NH+jTV4kId?=
 =?us-ascii?Q?6/OzZ8zsJkrj9DF176vtkzRwKj7QKmvzzD3klCJc9uCEX6esdEZMVjd73Rnz?=
 =?us-ascii?Q?hoeHTj+mnsW6XNXk467SgtaHQsjOrHHe1YNmTFppVOCl3KR0qucQHuWdoKTi?=
 =?us-ascii?Q?Vw=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 88ef5796-d4b6-43d1-1b27-08db466be45b
X-MS-Exchange-CrossTenant-AuthSource: DM6PR11MB2937.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 26 Apr 2023 15:35:41.3022 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: yfms469YAwXQlOeRfwLQHmXKD2anYOYcPv48Vb1chzjCSd95856s7NP4W6fd0VYcuFN/WxzfVpKhwuViy7hf2Q==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BL1PR11MB6051
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1682523353; x=1714059353;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=2IvMRcZO6rTz26qe4lG+L/DSnjPPv5BwOWLU9DxUM04=;
 b=Dh1v6G2ICRJODmY6fkqh/oLuzfG1FGrsZi4+9BtMKnU/EQ2tDrzPqfB5
 PKysKV8blOp3rSe1aNZwLjMEiUKanCHCxfnxidBENgf2JdvNaWja0gDqE
 BHj1tjQfamNagEBXUCGZkHIDP0HYBoGPIHpKKN6u+Ei60SHtBPZkzB/qQ
 dS3BglC2jYKtBmp92AkKVouVVXga8WJY6XbyUkGVUo0bgkm83sF/GqPiC
 AFiDT+BzKioYuiLXsNWCq3i6k7BqfcDL94fAiN9Zlja47JmMsPW2F/EXS
 qPok9tSZQKIxTjBdLg0i45suYYQBMB8SZJL0VWs+1d4Md+CPFhRBAXjVR
 w==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=Dh1v6G2I
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net v2 1/2] iavf: Fix use-after-free
 in free_netdev
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
Cc: pengdonglin@sangfor.com.cn, keescook@chromium.org, gregory.v.rose@intel.com,
 anthony.l.nguyen@intel.com, mitch.a.williams@intel.com,
 jesse.brandeburg@intel.com, huangcun@sangfor.com.cn,
 linux-kernel@vger.kernel.org, grzegorzx.szczurek@intel.com,
 edumazet@google.com, netdev@vger.kernel.org, intel-wired-lan@lists.osuosl.org,
 jeffrey.t.kirsher@intel.com, simon.horman@corigine.com, kuba@kernel.org,
 pabeni@redhat.com, davem@davemloft.net, linux-hardening@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Wed, Apr 19, 2023 at 11:07:08PM +0800, Ding Hui wrote:
> Cc: Huang Cun <huangcun@sangfor.com.cn>
> Acked-by: Michal Kubiak <michal.kubiak@intel.com>

I'm sorry, but I don't remember giving "Acked-by" tag for that patch.
I gave "Reviewed-by" only for the v2 series.

We can't add any tags if they weren't given by the person himself.
Please fix that.

Nacked-by: Michal Kubiak <michal.kubiak@intel.com>

> Reviewed-by: Simon Horman <simon.horman@corigine.com>
> ---
> v1 to v2:
>   - add Fixes: tag
>   - add reproduction script
>   - update commit message
> 
> ---
>  drivers/net/ethernet/intel/iavf/iavf_main.c | 6 +-----
>  1 file changed, 1 insertion(+), 5 deletions(-)
> 
> -- 
> 2.17.1
> 
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
