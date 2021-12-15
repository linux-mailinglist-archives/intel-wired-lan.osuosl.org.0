Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 23D3F47584B
	for <lists+intel-wired-lan@lfdr.de>; Wed, 15 Dec 2021 13:00:09 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 2BB1E40991;
	Wed, 15 Dec 2021 12:00:07 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Fb6YpXp9Iuv2; Wed, 15 Dec 2021 12:00:06 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 9631740985;
	Wed, 15 Dec 2021 12:00:05 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id E9E161BF2F1
 for <intel-wired-lan@lists.osuosl.org>; Wed, 15 Dec 2021 12:00:00 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id D7547410A9
 for <intel-wired-lan@lists.osuosl.org>; Wed, 15 Dec 2021 12:00:00 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp4.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=intel.com
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id AG_J2NmaH9e1 for <intel-wired-lan@lists.osuosl.org>;
 Wed, 15 Dec 2021 11:59:59 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 89A70410A8
 for <intel-wired-lan@lists.osuosl.org>; Wed, 15 Dec 2021 11:59:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1639569599; x=1671105599;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=RnLVRyK4Q935dzlpieydpuICKwElw3J9vMi92k9pUUM=;
 b=Zc290amLpxEkCqds2aAoJlTTaSyQGb+lWYt2IPQV7AzRAjD12Liozx6N
 ohoK62kbfypVDS+kyd/2R39pnSyT9aLIDIU9PoCr6SSguijVcA+SSvQ4D
 qvIQj8NkT/KeRLi9AwfSuIEUSDWAVAnv/cglyxp0ZNAWYJK+h48UgGxG+
 EvEEDjly6K9W85uciqe3Fh43xHnSpIrhdsqaQ84goB57QpQ2pHNWjCSSS
 X5CSKDYR+UemvVjbKsgSQ3Zjc5GdL3QNnhVQcRaAAmxGpWhZepy7e2fn5
 h48QbnbNhLY2v9WW998HU45o3Tuki7jvYTOmlfrlktVvkFNRFG00goSIm Q==;
X-IronPort-AV: E=McAfee;i="6200,9189,10198"; a="219226635"
X-IronPort-AV: E=Sophos;i="5.88,207,1635231600"; d="scan'208";a="219226635"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Dec 2021 03:59:58 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.88,207,1635231600"; d="scan'208";a="519705452"
Received: from orsmsx606.amr.corp.intel.com ([10.22.229.19])
 by fmsmga007.fm.intel.com with ESMTP; 15 Dec 2021 03:59:58 -0800
Received: from orsmsx607.amr.corp.intel.com (10.22.229.20) by
 ORSMSX606.amr.corp.intel.com (10.22.229.19) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.20; Wed, 15 Dec 2021 03:59:58 -0800
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx607.amr.corp.intel.com (10.22.229.20) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.20 via Frontend Transport; Wed, 15 Dec 2021 03:59:58 -0800
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (104.47.59.173)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2308.20; Wed, 15 Dec 2021 03:59:58 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=M9ZvhA87u24bk1L2mClCVnObNGYqU+dCSrqcyUe/0uTeD8Mj4nDzUU2tSM5O4aS7E4EWwRsVfz7SW+A2sLNbok4V30RtURDTPDTw4tTuLZWD9LHsP0lwt6NZYvjM0B+NS4j6/Pgu/+yzVr7GFgF+DUbLfgJGQ3w/IlSdDV+8JO/YCL2zFtH1SmzPtA+gDme2B9mi8rs8PVOw0FcUXr82TJtOtJHOk/qWqv6iyNPqtg3QURPTsYIPiRv5crmaWvE+vKQ68HLUXNnVpimV4VZeYpAZ1OQxYU59GmbvyaqMfY8O8mJGcu3+xN3tU1Ws0N6/cuh2uhzKwZ1gwT0UkNQhbA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=cMtBcwZTQuxShEgAmwAOBnh4KuIeF5KM2kJLHX+2vpc=;
 b=apTHSKmdI8pk3pOcpJiKw6FCdCAQuTz8MAUOR+nPQa8wtUz9BeRAdp4nEDZev42ylDDYHGPKdJQCOxYtfu5BKh7sZ1VJ6LzB78lFi/+7USQPs+3whxgHAlp57hsg7aP/IPLpaRQUzVVKAjiVTwksIsSjTfJ84k9LmedmVG8zRMpSXn5JjYwOSe1cxIPHlQyjsPE6DTp0s4IidqVT+RvKwi7o7gkVF2SXnl6w2uuo2uv1blaj5VzD8yTBoOV11qZkLuJqGkKfHSz0KfXHjajJyO3aRWrNM0MhtRD3RYWUjFG1Rj6DJIA30j5ZFqYgrLe4Ppca3ZFkY7a5b++52rPrnA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM8PR11MB5621.namprd11.prod.outlook.com (2603:10b6:8:38::14) by
 DM8PR11MB5573.namprd11.prod.outlook.com (2603:10b6:8:3b::7) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.4778.17; Wed, 15 Dec 2021 11:59:57 +0000
Received: from DM8PR11MB5621.namprd11.prod.outlook.com
 ([fe80::3114:bfaa:f64d:684a]) by DM8PR11MB5621.namprd11.prod.outlook.com
 ([fe80::3114:bfaa:f64d:684a%5]) with mapi id 15.20.4801.014; Wed, 15 Dec 2021
 11:59:57 +0000
From: "Jankowski, Konrad0" <konrad0.jankowski@intel.com>
To: "Sornek, Karen" <karen.sornek@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH net-next v1] i40e: Add placeholder for
 ndo set VLANs
Thread-Index: AQHX1TqftR+8oxq3M02vbaQapobAEqwzq/aQ
Date: Wed, 15 Dec 2021 11:59:57 +0000
Message-ID: <DM8PR11MB5621831FCFE2ACA1CFA9BD25AB769@DM8PR11MB5621.namprd11.prod.outlook.com>
References: <20211109072331.56673-1-karen.sornek@intel.com>
In-Reply-To: <20211109072331.56673-1-karen.sornek@intel.com>
Accept-Language: pl-PL, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-version: 11.6.200.16
dlp-product: dlpe-windows
dlp-reaction: no-action
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: b49c2d99-c8b1-45bd-c013-08d9bfc269f7
x-ms-traffictypediagnostic: DM8PR11MB5573:EE_
x-microsoft-antispam-prvs: <DM8PR11MB5573811DE490B17214518B3BAB769@DM8PR11MB5573.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:4303;
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: CkGBYreGRQitC9LEO50KH4A6uXMRP3uFBQr62MThIlpdWp7dv8rsQKO1YBoQA+3Qx5fs27fvXodrq35tOcjMmHiWIE3SHqHeYx6sF1WV4lFHn59powBxhTwRVLWoVbnRmTH/0jdgkuq1UFLvQSySlU8GL7oMuOyssVokQt8TK5XfQ9i+SB6CQYGpWWUSRqQ0XTFjKEVURhBO1wpwsbVzCVa1qWrgF4TpNKvaoiO1w8YfzLPDWXAp1ut2eEriu2NCXeXydWmn7UXNmbFERO7W+BvotQ+HaxH+pYOlKxUcR7oU6gaypOfoz4rCsZCy5e/bWFYJQsMOi7oEkvsuLvkTmq+I8F7vcd0qKy++YSig88eDe6cL4VxeRdEmL9CrEsYxNEwAV8J1ZhQ81hZKDsWpxFPnOKVn7DB79IjouALANr4UAZw6ti3JpiPmOFmaITSCB3PRqoWGm/6ebwEhkW1gzPwNTfqQU3nqOrRqeOUl3a8IscZ9UUHvQz5+XwdlVJTG78bJrlIlGQ8pBAnSwJY0UZ30v+44p1uwrjEBmlF14825YfIkEEnK1tPazQ7YUK01/dzoJCrK0OZONlIXg+3dJYMKbKsQxZbJ7yloYcHwPDxrz2bOiH4qQgoqTfTGMN/cU1cYilH8ZcNI8WxCmm/6B2YmHCZ2r0VXxZkp5jnPTStXNHLvYhVLqHsFZRyCqfYhOMPWX1HMcYRTJm3YnZr3GA==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM8PR11MB5621.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(366004)(33656002)(82960400001)(38100700002)(122000001)(54906003)(86362001)(316002)(508600001)(53546011)(8936002)(38070700005)(8676002)(6506007)(7696005)(2906002)(110136005)(107886003)(71200400001)(26005)(9686003)(186003)(83380400001)(66946007)(76116006)(52536014)(66476007)(66556008)(64756008)(5660300002)(66446008)(4326008)(55016003);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?IRIV8Yp7sxFqAEwljeXSyQhAuwp5Fq0qTDFJ8jOJefYI8oF7uikEwPjnPp2D?=
 =?us-ascii?Q?biispv+aQAKuXHJJPSw86Tv5iYI6HVDJeuP4izIquAuZhA1KScR2AgTiRSrV?=
 =?us-ascii?Q?SgwfW8MxwtuGR6Bws+rgTT9YcZrLx4e8tuNbuwEgx5BOHItruE/I0JqvQNWC?=
 =?us-ascii?Q?EGQtQUVsFyY1jsAsxxrDKl8RVg2DgS5gZTWRLAiEldfat8ONF3/7X6BhZel8?=
 =?us-ascii?Q?Q1d4UrzBEfiNRj4LzailU4RH4P+qPM1dTsa2TnWas/WLhA0yT44eLminUO+c?=
 =?us-ascii?Q?aE5wVKOGfQVOy63DOcNMc0TgFOoV3/xAonmkUxEc/1HvxunyyI6dWMWeL2pP?=
 =?us-ascii?Q?ZBAqDVmZOOWflT3oj6vslinKHOuKwH831oiwOW2OXC2eS2XHTMwmOOKaVS+J?=
 =?us-ascii?Q?sxe6GxQLZyCqpHiCqzHKq7fSsQVP8WUcw1mbAM5assjyi7IQuaUeoqNjdg+a?=
 =?us-ascii?Q?X1Y7J+1AHJSGdNax6JZzzJzjwukONlLL+k+caDu4JMgjjZP+6UAnGlqmFtBj?=
 =?us-ascii?Q?v8C+CfoBRPhmHFSlKtLsv1z9zRr06DUAicgw4p5QbuAMP4qL9+7npQ4qXZur?=
 =?us-ascii?Q?XkjhIdvcr6yVzzJmn5JaVlL67cm9kDhX5/AhXDPlBGp1eAP4h0T2d2ASmv2s?=
 =?us-ascii?Q?M3uZ1GxfAbO9V0qHYdKP7xz0Xq+3ZcGXkJNSpoWOeDgoDnNxSuKx+98R0Qvw?=
 =?us-ascii?Q?oLKPWnZ1cjKxUziZ0zQ27OOpIbrOUdcLNtW0PZ5bBDgr0SAn3zXlUk/1A51h?=
 =?us-ascii?Q?S0QA5JqAYp/nqbRSyafXFs75EN03/DDS49T7xw71D1YEqiGivRObwUJ9rB+O?=
 =?us-ascii?Q?Vir7j5F/ndgUC4vOIe+CXhpK3xaRh/c+wOov5DMFenl7Mhb51pKUOUCue6yX?=
 =?us-ascii?Q?sUV6p9+7MSNyWb1nzH/vKRMagP9GZX7iexPA9EANT+v3f8W5IjjYZmWLGckq?=
 =?us-ascii?Q?NY04ZNZ1ceP9BCpJ2tCFKYyrueT7qCqnezqFnxLSotmAGCUc4SsW6od/Ud2J?=
 =?us-ascii?Q?Jl308hRv0LpHfhwvU6BAcUeWoEci04BLesFoU/9PKMWeP3Rb2oBsr5DPmzfX?=
 =?us-ascii?Q?9jjmJ+RZRel3Bxklc9d+3PNKDX7lUHgXwXb1Lp7XIPMIAKU7AvrdoSSMAuEw?=
 =?us-ascii?Q?T4vlmfD51DaxcX/hdNbkFsRM0sNb5+6SgoJHggBwk/J0EnE80dGxY8RzdFNV?=
 =?us-ascii?Q?WAITIkDEj1TXNyhHcSd4MFxfFgCdLsS73DlALAAnxzN7gt1nXf0gVaLvKkQd?=
 =?us-ascii?Q?YrYmL4p8LCzH6jxA4NUoXNhIHD7Itz5YvBhs5ZKiD0xu9hv9FSKeGlXud0D/?=
 =?us-ascii?Q?2reEiO1gzBURwl+fMX078PHsU3ad2I+nsqndhoh42oTC1rUBmPNzUtTUaye/?=
 =?us-ascii?Q?Y7iWhTK8JB9aZzJi7FvG+YNiXv1FPWICeqU8xEjVuDsfoNcPnzLTkKX/B8ti?=
 =?us-ascii?Q?73THldjdqR96ERKLr4car3XiZq/YsoCm8s3jimj8u1LlAyhLuLuE4Pn6KV9U?=
 =?us-ascii?Q?N4l56wdfGMylBsCsnWp7zgEmQQ9H9vImnvxOiI8KKNfHbVyt6E0Zubwugm9z?=
 =?us-ascii?Q?jgsAaxf3ySUkzlGSPxXmm/Ix/G8AMgBc0ij7aHt+wdnA4zPf8zArAQb+puHA?=
 =?us-ascii?Q?xps1hP5PEFBfG3M8xv0ufSijAyblBKdI35qjAVPc1W9sDW5MjDnWLzXcYWLn?=
 =?us-ascii?Q?2meBTw=3D=3D?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM8PR11MB5621.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: b49c2d99-c8b1-45bd-c013-08d9bfc269f7
X-MS-Exchange-CrossTenant-originalarrivaltime: 15 Dec 2021 11:59:57.1413 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: EUfRqsQ+3i/O+0e5yJPT/EHqyDfn/zhbR9rLgkZ4hbB/LzQKX82zJVbDJ01ymjtQ2jd+1QPpwPT2ASC6nljZ0UuIZaYm6SWeTSNTBmGVkVI=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM8PR11MB5573
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [PATCH net-next v1] i40e: Add placeholder for
 ndo set VLANs
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
Cc: "Patynowski, PrzemyslawX" <przemyslawx.patynowski@intel.com>, "Sornek,
 Karen" <karen.sornek@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>


> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of
> Karen Sornek
> Sent: wtorek, 9 listopada 2021 08:24
> To: intel-wired-lan@lists.osuosl.org
> Cc: Patynowski, PrzemyslawX <przemyslawx.patynowski@intel.com>;
> Sornek, Karen <karen.sornek@intel.com>
> Subject: [Intel-wired-lan] [PATCH net-next v1] i40e: Add placeholder for ndo
> set VLANs
> 
> VLANs set by ndo, were not accounted.
> Implement placeholder, by which driver can account VLANs set by ndo.
> Ensure that once PF changes trunk, every guest filter is removed from the list
> 'vm_vlan_list'.
> Implement logic for deletion/addition of guest(from VM) filters.
> 
> Signed-off-by: Przemyslaw Patynowski
> <przemyslawx.patynowski@intel.com>
> Signed-off-by: Karen Sornek <karen.sornek@intel.com>
> ---
>  .../ethernet/intel/i40e/i40e_virtchnl_pf.c    | 102 ++++++++++++++++--
>  .../ethernet/intel/i40e/i40e_virtchnl_pf.h    |  10 ++
>  2 files changed, 102 insertions(+), 10 deletions(-)
> 
> diff --git a/drivers/net/ethernet/intel/i40e/i40e_virtchnl_pf.c
> b/drivers/net/ethernet/intel/i40e/i40e_virtchnl_pf.c
> index 5a488ce545..cf19e118ee 100644
> --- a/drivers/net/ethernet/intel/i40e/i40e_virtchnl_pf.c
> +++ b/drivers/net/ethernet/intel/i40e/i40e_virtchnl_pf.c
> @@ -986,6 +986,81 @@ static void i40e_disable_vf_mappings(struct i40e_vf

Tested-by: Konrad Jankowski <konrad0.jankowski@intel.com>
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
