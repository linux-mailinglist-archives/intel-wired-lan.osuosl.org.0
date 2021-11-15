Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 21D45450275
	for <lists+intel-wired-lan@lfdr.de>; Mon, 15 Nov 2021 11:25:00 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 7F1624045A;
	Mon, 15 Nov 2021 10:24:58 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id rbYLWZGfWzHd; Mon, 15 Nov 2021 10:24:57 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 6020340457;
	Mon, 15 Nov 2021 10:24:57 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 1A96B1BF3F9
 for <intel-wired-lan@lists.osuosl.org>; Mon, 15 Nov 2021 10:24:53 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 0895C80CFC
 for <intel-wired-lan@lists.osuosl.org>; Mon, 15 Nov 2021 10:24:53 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp1.osuosl.org (amavisd-new);
 dkim=pass (1024-bit key) header.d=intel.onmicrosoft.com
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id SoAAdXFikWxl for <intel-wired-lan@lists.osuosl.org>;
 Mon, 15 Nov 2021 10:24:52 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 1673380CE7
 for <intel-wired-lan@lists.osuosl.org>; Mon, 15 Nov 2021 10:24:51 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10168"; a="233357354"
X-IronPort-AV: E=Sophos;i="5.87,236,1631602800"; d="scan'208";a="233357354"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Nov 2021 02:24:51 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.87,236,1631602800"; d="scan'208";a="453774980"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by orsmga003.jf.intel.com with ESMTP; 15 Nov 2021 02:24:50 -0800
Received: from fmsmsx607.amr.corp.intel.com (10.18.126.87) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12; Mon, 15 Nov 2021 02:24:50 -0800
Received: from fmsmsx605.amr.corp.intel.com (10.18.126.85) by
 fmsmsx607.amr.corp.intel.com (10.18.126.87) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12; Mon, 15 Nov 2021 02:24:50 -0800
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx605.amr.corp.intel.com (10.18.126.85) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12 via Frontend Transport; Mon, 15 Nov 2021 02:24:50 -0800
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (104.47.59.169)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2242.12; Mon, 15 Nov 2021 02:24:47 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=VSrWHeE5Vphqtew9r/OoJN5isKRsCkTipr7G6wQYeNzvZwfMhyJEp1fMcepv/X7M5G3JOx9Udkp/hdH5tfu4rtFzl2R/AZXsDsbzyZ4rMeqePfufhZWMSURz8ivL6mdaRIHmQGkbHTZXTqnQfUcrqDC1dVjRDgBsJJIMDqbkkTW9f4RhiZkJlUlIfyfz9JXW4HfqlVepCJcZp6qSS1CXeIu4Su8ef1A23GviX4MkYAAhYXWDYz4hVS+10qggGyXoa6+xdHQVlzTFAHpvjF1hfWEMkOkfGk0jUnn81fLvGSzZTL0t9uziCC1TAeDmLbb0rQhntjaOofXf27KCXgv6fg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=0daJktQc1Uq7c6SkKYS5GS5bkY7iPGgODfU/7vfF/DU=;
 b=Fk+9RyjITCCrFNCXdjbNIJBP6XBG8ZfOmAUyJPxe3mc7ngAf9k175ZHwqB2OnO9aDVqGj/hGOkVCipxv1fBl462E6TqH3aaYIMAnfDPW8c4GoYTaQ0jkbQSTQBp57Avii3RTrj74SkY3M9q1hG1QSyVEfU37xJaMocC3S3tH8pKpQY1qfa6/Cl9ye/ME1Dwr0rb9You5AavbXPh/pW9uXYWD4gt8C9MdsQJK7Pf50Jn75TqXPygQ7pimUY4d5gXiVsq2iF6C2MpqeSI9V2lndnv83YzHkdo/M5AmxmjyJYUpVBowQ5G0ysTR8yxRpU5flN/kkCoog2p6HnXoqS3LWw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=0daJktQc1Uq7c6SkKYS5GS5bkY7iPGgODfU/7vfF/DU=;
 b=mwO7ZybOvl7Sh24LUIYpDwZwEUHP9tRKr+MyiiEvVwgj/Iy8LMiEVYzNvJsI2V8nkVIs9FrmS77cl2sSyOt2L270w18nVvf263PaEtQvt+xL6/bmkE/0yl4AqTbTl7TctmObarYHh19316V5d9PJoizM2Pp9/h+xfdGHur7Pbi0=
Received: from MW5PR11MB5812.namprd11.prod.outlook.com (2603:10b6:303:193::14)
 by MW5PR11MB5858.namprd11.prod.outlook.com (2603:10b6:303:193::20)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4669.10; Mon, 15 Nov
 2021 10:24:46 +0000
Received: from MW5PR11MB5812.namprd11.prod.outlook.com
 ([fe80::1127:5635:26df:eca9]) by MW5PR11MB5812.namprd11.prod.outlook.com
 ([fe80::1127:5635:26df:eca9%7]) with mapi id 15.20.4690.027; Mon, 15 Nov 2021
 10:24:46 +0000
From: "Machnikowski, Maciej" <maciej.machnikowski@intel.com>
To: Petr Machata <petrm@nvidia.com>
Thread-Topic: [PATCH v3 net-next 6/6] docs: net: Add description of SyncE
 interfaces
Thread-Index: AQHX1iqaoGL4JrqyH0+WzcbffTt8mqv+RxWAgAYf5AA=
Date: Mon, 15 Nov 2021 10:24:46 +0000
Message-ID: <MW5PR11MB5812E733ED2BB621A3249CD5EA989@MW5PR11MB5812.namprd11.prod.outlook.com>
References: <20211110114448.2792314-1-maciej.machnikowski@intel.com>
 <20211110114448.2792314-7-maciej.machnikowski@intel.com>
 <87tugic17a.fsf@nvidia.com>
In-Reply-To: <87tugic17a.fsf@nvidia.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-reaction: no-action
dlp-version: 11.6.200.16
dlp-product: dlpe-windows
authentication-results: nvidia.com; dkim=none (message not signed)
 header.d=none;nvidia.com; dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 1729ac33-d253-48c1-bdc7-08d9a82225c4
x-ms-traffictypediagnostic: MW5PR11MB5858:
x-microsoft-antispam-prvs: <MW5PR11MB58580802A492D64537E802C4EA989@MW5PR11MB5858.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:10000;
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: ZsP5e7cdbqYEb6mxh6w2R5VSbbIeReUVpVDYPRObB0wvaFrBOFr0ulv6AOKNeJif+j0VTdwfWvLSejaOMMZx7caclqZVnLFIqALPz9/0GlgRK0jajF1UxEI2VdkQ4F2q97uJ59N/CMnE7NXXlyAYBFMnQdPMIcfDkrQWiWNvCqwF3PkwKYZrE6hmlTAA02WxFlYsDxip1t08XqtT75LuWKaQcWooPeCfd5AclBU4NBMZkkpgqocT6uydM89YBBqym7r81JXXyplYNAZePGf6/okn7tcHhv0+2iiHftwsj1MWOc9I3ouNUXP3FlJNyHtC6fC8pYyAfxD2BdnWhAdqPyzDyNLq4n2wwHg+T2/D96Yic8x7Uv3GiAyaxZA09Jtpr2xbsNaALDy769WBbL6RbROgj+tWulbi/sTXBvFLvtqg353vNkZ5JIXE5S3d83sg6ula6bX/lj+rSKNSxB2DLHzpe3VBR+M32SLG96wKpC20BqwRVGm0N59sn2T1Lf0o21W/6zcpi5cV6WOugXEhvkAvf9+323G+glUJB07CEj5ojtNem15Q2Z6AQo6Y4yucOedmoOKzzdEF/fyoQjddjcWFXOoFm5drFf4EniaVRKTnMgWEaFOdmsPLG2LYj1lvuztDzeL+oX5tTXPsNjMMGHnQOPxKAl2KXl4RxZO29QyDJoW8KKIZkrgE//ioDv4fLzYBx+gipt6nBH9J6/QXwA==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MW5PR11MB5812.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(366004)(7416002)(66476007)(4326008)(26005)(9686003)(316002)(186003)(66946007)(38070700005)(66556008)(66446008)(64756008)(86362001)(6506007)(76116006)(7696005)(71200400001)(33656002)(53546011)(5660300002)(83380400001)(2906002)(508600001)(8936002)(122000001)(55016002)(38100700002)(82960400001)(52536014)(8676002)(6916009)(54906003);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?YlBXV3JZbGxvVnN0L0YzM0ZKZjVEQkQ3VG9qbDRzMXNYNkFFN0xXc3VmYnNT?=
 =?utf-8?B?ME9CYlFVSzNBdDVZWXB2YlVONzJHcGc1ZHRoaXBIc29YU09ZTjhMcWFkVDhG?=
 =?utf-8?B?K29ESGpaUmpYZGN6LzViWHdrSllRYWlNQy9BMWk1emhGWjBRdWJhenFTM2NK?=
 =?utf-8?B?N2RWSkRvM09wbk11QnhZQ2VrNWNzYWVtSXpOUlRlVXpta0U4VUpUYVkrenJr?=
 =?utf-8?B?NWlBcWZtZ05KK0RSNHZiTDhnY2tEZHBHSFNJRnZDbWJhblFQTXhzMGZTclBN?=
 =?utf-8?B?dXY3d3NGYTYrT3VjNWVMWEplTit1MjBZcmlkWk1BZzhoWkQ4TmlnZGlxUzRq?=
 =?utf-8?B?ZmtzVkpSQmxxeUxEUGZCVW9BOHVvb05DaERSc2FmTjJGeTFlY0VINGYxNUVo?=
 =?utf-8?B?dnIwT2F5RXJCTXl1d0RmUmt0dVJySTdGTHorREJ4MjV1dkh5RWlOWURScmU2?=
 =?utf-8?B?a0NYVXNWbEJ5VDhjV2hzT1VuU3BpR29xUktMSUM0OTU4aHBwNEJrcXkraVFT?=
 =?utf-8?B?aU9SL2ZzYzBncUgvS20weFk2bE5WY0MrckdsSjV5MERWcWc2WGpiYnBaOWVv?=
 =?utf-8?B?WTY3WmxlcDU0QzBBZXFzR1I3dFV5dUIyS1dQVHJHd1M3WTRRT09zdDF4SDFM?=
 =?utf-8?B?VW9zOXI0MVRPSmpNc2QyeHpoRC9SWXJ1cXBmbkRpQnY0YXp4QTRlT1BkbXJM?=
 =?utf-8?B?eXlzNjJjZ1RNbEtaQ0srWC9IUTB1QjF1WjM3ZXJlNXpkN05rcFo1dkloenE3?=
 =?utf-8?B?dXNOV0dCUUhwWHdXbW5IU0pZMlhDUjVqWGo2bzY3WWYvSy80djVmWXNpdUhn?=
 =?utf-8?B?QlpVOGxWWGFMa2JEWGVBRHdaaFBYRElWQUlSUDhHL0I2WTZLOGdFdmNtY0RM?=
 =?utf-8?B?bWFRR1FRak1MUUVqaXJQbm5qaUMrRkJDZk9NeGlIUjRsVDgxQXkvZ3dNdDRT?=
 =?utf-8?B?SEtYVUxqOVl5WmtsS1hxWUoraG5jWmI2U1hrMEtHR0hOdU5SUEI5VzdINzdM?=
 =?utf-8?B?N0Rqb1FzdTljdG1Bd3prWHUwenRIdERkcVFqQXl6cUJadmx3SDR6cW54K1FL?=
 =?utf-8?B?VHVWY3MzWGNpMkg4NmFodldNSUs0S3hLMSszYkIzWER0TmRIT1Q0bkRlN1l3?=
 =?utf-8?B?NDl4aDZDTitJMWlwcTRTYUt0Q09YTGY4OTU5R096SHo3ZWt5Y3Y3ZlFJZ25r?=
 =?utf-8?B?bGR4VE5xYTl3d04wQkhsMytJVWFmSzMrbXVIUlpvRnNENW1XY1VjQzRHdkpu?=
 =?utf-8?B?TVljRTVmR21jUlN0cmZzU0dqMXhSUWgzMHhsUWlGZ0E1UERBSkk4RHRUM296?=
 =?utf-8?B?czB5czFCSW4yQUlwNHpJMnIyR0VkZitTRktsWXBHQlpBUkZKb2JSK01hVkVx?=
 =?utf-8?B?Wnpnd1dXV21xaFExZHdyckNrZUFnOERKYjVRemNsSmVzdHh3UVM4c1gzV01R?=
 =?utf-8?B?ejBpQkNYdExjbENYbWx2U1k3bzl2NmxFTDJkWDd3ZEpHd3NPRDJEYThQSjha?=
 =?utf-8?B?R21DeWEybDR1RWc5QUI5S1dJWjVrbitSSDdyaktOdDB4cHdwVXJtSUcvMUFs?=
 =?utf-8?B?NXcwdDVKdHZ3QnpsVmt5RmtyWFhING5uV0paU1pCK09CdngvWGgyUlZtbmww?=
 =?utf-8?B?Nk8zK0VFYWY5UU1IUUFFeGQ5dzhyU0srMi9RTjBGVGpOZlJUMlVZZ2FDRHV3?=
 =?utf-8?B?bkVEdG5RQmwxM2NneldXVHJkQnRKK3NXNUl2UnBoZ1lZNUJYc0JobVpxbzgx?=
 =?utf-8?B?bXBXQm96aUNhdUFFRHREVldwaEw4NTdjRUJwT1JZNk9aU0FBMGNBbnN1QUhi?=
 =?utf-8?B?Z2hNSTdCUkgyRjJFK1RYa29Dc1Q2ZWdKd3RzN1R6Y1Y1ZnJ5a0tCc0NtOFBw?=
 =?utf-8?B?ejdhbzBWQU5mMGd6VisvS3NQU3hXWlZaVWhIQTcwZXhDSUdTNVh6MWdaR2pn?=
 =?utf-8?B?VUV0bXk0YWF2Q1U2c2h4ZHNFOW5XMGhFRlRZU1BPTFExdGZ0RzZzWXJBR3No?=
 =?utf-8?B?aDArdzZyZld4L2JVLzgvVFl0K2xnaXAwcG1ESVNlejlrYWhhRU5PMldEY1hk?=
 =?utf-8?B?VEtoTUZiUDZDMjY0cDZkYzVEN1FUWHVaMjdYL2kzYzVpVFpuZmVNd3Fxbi94?=
 =?utf-8?B?aGxQL05sRUtoaVVjUlZSaVV3ck5uOXYwc1lpNVczc0hGZWhXS1h2UElmRkkv?=
 =?utf-8?B?TWJCQ0hyNXZGMHR5dUdKNlVCMjF1Tmp0cTRYS2xVNFdsT0hrYVBBU3BpQmtI?=
 =?utf-8?B?ZktUdFVHSVIzL016WnlOQTE3Y1pBPT0=?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: MW5PR11MB5812.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 1729ac33-d253-48c1-bdc7-08d9a82225c4
X-MS-Exchange-CrossTenant-originalarrivaltime: 15 Nov 2021 10:24:46.4406 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: SKpSqvSfUMAcZ/e0a+ZYCjB+VLutWPAtheA5yqPoH7QQfrqrvfLNYsqsMcH3vfprlccRzaiy1RXFssyv2hC5zl8Boi4f2Lp+QWHEjSWyZAo=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW5PR11MB5858
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [PATCH v3 net-next 6/6] docs: net: Add
 description of SyncE interfaces
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
Cc: "mkubecek@suse.cz" <mkubecek@suse.cz>, "abyagowi@fb.com" <abyagowi@fb.com>,
 "saeed@kernel.org" <saeed@kernel.org>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 "richardcochran@gmail.com" <richardcochran@gmail.com>,
 "idosch@idosch.org" <idosch@idosch.org>,
 "linux-kselftest@vger.kernel.org" <linux-kselftest@vger.kernel.org>,
 "kuba@kernel.org" <kuba@kernel.org>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "michael.chan@broadcom.com" <michael.chan@broadcom.com>,
 "davem@davemloft.net" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

> -----Original Message-----
> From: Petr Machata <petrm@nvidia.com>
> Sent: Thursday, November 11, 2021 1:43 PM
> To: Machnikowski, Maciej <maciej.machnikowski@intel.com>
> Subject: Re: [PATCH v3 net-next 6/6] docs: net: Add description of SyncE
> interfaces
> 
> 
> Maciej Machnikowski <maciej.machnikowski@intel.com> writes:
> 
> > Add Documentation/networking/synce.rst describing new RTNL messages
> > and respective NDO ops supporting SyncE (Synchronous Ethernet).
> >
> > Signed-off-by: Maciej Machnikowski <maciej.machnikowski@intel.com>
> > ---
...
> > +RTM_GETEECSTATE
> > +----------------
> > +Reads the state of the EEC or equivalent physical clock synchronizer.
> > +This message returns the following attributes:
> > +IFLA_EEC_STATE - current state of the EEC or equivalent clock generator.
> > +		 The states returned in this attribute are aligned to the
> > +		 ITU-T G.781 and are:
> > +		  IF_EEC_STATE_INVALID - state is not valid
> > +		  IF_EEC_STATE_FREERUN - clock is free-running
> > +		  IF_EEC_STATE_LOCKED - clock is locked to the reference,
> > +		                        but the holdover memory is not valid
> > +		  IF_EEC_STATE_LOCKED_HO_ACQ - clock is locked to the
> reference
> > +		                               and holdover memory is valid
> > +		  IF_EEC_STATE_HOLDOVER - clock is in holdover mode
> > +State is read from the netdev calling the:
> > +int (*ndo_get_eec_state)(struct net_device *dev, enum if_eec_state
> *state,
> > +			 u32 *src_idx, struct netlink_ext_ack *extack);
> > +
> > +IFLA_EEC_SRC_IDX - optional attribute returning the index of the
> reference
> > +		   that is used for the current IFLA_EEC_STATE, i.e.,
> > +		   the index of the pin that the EEC is locked to.
> > +
> > +Will be returned only if the ndo_get_eec_src is implemented.
> > \ No newline at end of file
> 
> Just to be clear, I have much the same objections to this UAPI as I had
> to v2:
> 
> - RTM_GETEECSTATE will become obsolete as soon as DPLL object is added.

Yes for more complex devices and no for simple ones

> - Reporting pins through the netdevices that use them allows for
>   configurations that are likely invalid, like disjoint "frequency
>   bridges".

Not sure if I understand that comment. In target application a given
netdev will receive an ESMC message containing the quality of the
clock that it has on the receive side. The upper layer software will
see QL_PRC on one port and QL_EEC on other and will need to enable
clock output from the port that received QL_PRC, as it's the higher clock
class. Once the EEC reports Locked state all other ports that are traceable
to a given EEC (either using the DPLL subsystem, or the config file)
will start reporting QL_PRC to downstream devices.

> - It's not clear what enabling several pins means, and it's not clear
>   whether this genericity is not going to be an issue in the future when
>   we know what enabling more pins means.

It means that the recovered frequency will appear on 2 or more physical
pins of the package.
 
> - No way as a user to tell whether two interfaces that report the same
>   pins are actually connected to the same EEC. How many EEC's are there,
>   in the system, anyway?

For now we can fix that with the config file, for future we will be able to
trace them to the same EEC. It's like BC in PTP - you can rely on automated
mode, but can also override it with the config file.

> In particular, I think that the proposed UAPIs should belong to a DPLL
> object. That object must know about the pins, so have it enumerate them.
> That object needs to know about which pin/s to track, so configure it
> there. That object has the state, so have it report it. Really, it looks
> basically 1:1 vs. the proposed API, except the object over which the
> UAPIs should be defined is a DPLL, not a netdev.

RCLK pin API does not belong to the DPLL and never will. That part
will always belong to the netdev.
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
