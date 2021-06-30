Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id A793A3B8A83
	for <lists+intel-wired-lan@lfdr.de>; Thu,  1 Jul 2021 00:35:03 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 2AFD340162;
	Wed, 30 Jun 2021 22:35:02 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id jxcrMmX-TQpZ; Wed, 30 Jun 2021 22:35:00 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 8A9FD4015D;
	Wed, 30 Jun 2021 22:35:00 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 026D91BF38C
 for <intel-wired-lan@lists.osuosl.org>; Wed, 30 Jun 2021 22:34:56 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id E48194015D
 for <intel-wired-lan@lists.osuosl.org>; Wed, 30 Jun 2021 22:34:55 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id C2C6IZdu8Y0h for <intel-wired-lan@lists.osuosl.org>;
 Wed, 30 Jun 2021 22:34:54 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 678754000B
 for <intel-wired-lan@lists.osuosl.org>; Wed, 30 Jun 2021 22:34:53 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10031"; a="188122277"
X-IronPort-AV: E=Sophos;i="5.83,312,1616482800"; d="scan'208";a="188122277"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Jun 2021 15:34:52 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.83,312,1616482800"; d="scan'208";a="455407185"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orsmga008.jf.intel.com with ESMTP; 30 Jun 2021 15:34:52 -0700
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.4; Wed, 30 Jun 2021 15:34:52 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2242.4
 via Frontend Transport; Wed, 30 Jun 2021 15:34:52 -0700
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (104.47.57.174)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2242.4; Wed, 30 Jun 2021 15:34:52 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=UBwPw3OVzHsiFjKnW6xaSGkhx1hLwFTTENFYIhjv0ekTviFp8FOTfVo5EEusONQobMkr4eeh69vx7axeHY79tCYvDSTgmI4n8CDKwLmgvojNuF1vHJnydDbL46GkxlXF8+5/1Yu989wFt780fbUFeC900F0PFQxt84dpa5d9/iGPqfcPG9Cg7XyzLm01pc+vB/81sQR0cH637eiPUrNmbp3oPlX6oBGLvy2EVQuw74z6FOjs0whqYdjjTVIRF0ulAZtu4g1Fp8QEW4201ewxtLEMa8/1a5jBtol9XB91IIXYW3hyoHfgb7CX/wpZ+3aG3AYAMd5zTwc4s6av/wIJQA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=7u3mWwtFdXiZIOfabYhHH8aHorL7MEZemnrgBzPdm9o=;
 b=mA3NvSlOg2pTsRAY1haQh6yiqjm1Y6fYUFYo6Xr4hjf74eaYguoGIslKwm9om2UUINbm4MdZNCoBD/xt30aB3sbPjRIPCiqbMZ5rOUUKLXBNX/wSo/TNT6g0fgS0INgGNbfGnGSIqnwep5+h1zXAXAIwRe6iqqqkf1wQDt3yPtpAonagpWDltmKtj8jcCIY9FKS1kuFaOzShBa+h8LRzdqeoAaOjMfn3CsIsHBbL7wJTTmK1Y5t+BDSdGe7NPUun0jh0dKbogzK1O5E1EYB4u/F1cC16zTxV2h/IFvoK0oUmFSRhf+xnPxzPUu8LwWh5WHd9BBTwMGQ25t9tOe6khQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=7u3mWwtFdXiZIOfabYhHH8aHorL7MEZemnrgBzPdm9o=;
 b=TnSc80nbdJqTSoxJnEY6+yEk0aWvFmewh9fTDvaXLFcjv7omAKU6EBLqvrMoHbdnZKkWD2qVbHOJQej0nJycHJtxMrYdbN3ODDClUwaQGzUNrepj3a1Yd5Or19kMKZOrniFj1GXR7Wh4Y3bD6wsuTN2FF7ZjRRUa6Pn8M3sEkyc=
Received: from SN6PR11MB3229.namprd11.prod.outlook.com (2603:10b6:805:ba::28)
 by SA2PR11MB4827.namprd11.prod.outlook.com (2603:10b6:806:11f::19)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4287.22; Wed, 30 Jun
 2021 22:34:49 +0000
Received: from SN6PR11MB3229.namprd11.prod.outlook.com
 ([fe80::15ab:e6bc:fd6e:2a1]) by SN6PR11MB3229.namprd11.prod.outlook.com
 ([fe80::15ab:e6bc:fd6e:2a1%5]) with mapi id 15.20.4287.023; Wed, 30 Jun 2021
 22:34:49 +0000
From: "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>
To: "Palczewski, Mateusz" <mateusz.palczewski@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH net-next v5 0/3] iavf: Fix init and
 watchdog state machines
Thread-Index: AQHXbDB7UhMvldRH3U2lM7xP3EPk/qstKLcA
Date: Wed, 30 Jun 2021 22:34:49 +0000
Message-ID: <0e303e027a54af97677f39c556042540af26777f.camel@intel.com>
References: <20210628151514.28547-1-mateusz.palczewski@intel.com>
In-Reply-To: <20210628151514.28547-1-mateusz.palczewski@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Evolution 3.36.5 (3.36.5-2.fc32) 
authentication-results: intel.com; dkim=none (message not signed)
 header.d=none;intel.com; dmarc=none action=none header.from=intel.com;
x-originating-ip: [134.134.136.219]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: c77f2d79-c880-448f-e15a-08d93c174564
x-ms-traffictypediagnostic: SA2PR11MB4827:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <SA2PR11MB4827F65F19889E65B631F005C6019@SA2PR11MB4827.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:8273;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: gS2/07gKaauxSXeuvsI2x9GkEBEMyujehMu5DM95ItbrMxS8Tp/iBbUPtx8zjeNXaXXXn1KpGZ40pnvgZCDaIETeZJI8mV4v6hp/M2fCQU88SMrNNvTE5VsPBORVTT5CbKu6sg8zb7dfHWcG43QgzJ+pBIPR8o3pgyafnVE+kAKfeOvID8y3/ob15LC2PVeD1PiPUjpReCytHwJYgYdMhRYFnbqyO9JstWm4CxfF/rG8Rnh7TsMMcYNV4voL63z1l03lijgePRUp6xvMlZ2qX1pE8HE3R9T+MjL2W0YYujfDvw7sGi3TiAINo2X8Ti/DRIDUxmtKRF/WraJqk9oVWU53eWOLfgyZqxNiPOpBiq5p7WNe8ylOY2HgWjZaHMkrLfcDCjxiL+OImXwC2d0UMuWuTVHJEDTd6bhZddEW+m+Ly85AdFgiLXDhsQ3T0oBG4srmH3otm7ToR9d68wSNcbEVQSpv2HCN17JYMqxHzJA/UQwLhOaNJhf7nzAcuuahXdCj+S1dc/NX2UZsx32C6Je2VIW23RiQz+AGYZ5XySxGY4c+3BiDmM23MqRqaKTKsD60ZOhfGzoW1byK41+DLATrQ+cFYpIyWv3FK/NdrW9hsZQT1YVwIW/gZGwM6FKYMBoqOzOIBoQDOc0Km1Ny6g==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN6PR11MB3229.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(346002)(136003)(376002)(366004)(396003)(39860400002)(110136005)(6486002)(64756008)(66446008)(66556008)(2616005)(91956017)(66946007)(66476007)(36756003)(316002)(86362001)(38100700002)(2906002)(76116006)(5660300002)(186003)(8936002)(6506007)(4744005)(83380400001)(478600001)(8676002)(71200400001)(122000001)(6512007)(26005);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?OHIvZWdSTUdYSWVTVWsxUUVIY2ppZ1krZ2szdlVOMk11NHNvZEtGSHZrczRM?=
 =?utf-8?B?NkxSRGI3bExTazFLRTNHYjNzVUw0QTlpd3diZG5VS0J4M1o0QWtUcENXdjl2?=
 =?utf-8?B?c1ZkMnVHZDZybzNjbHdwZU0wT1ZaelNlS3FZZjJjdHRkNk1HZGpSR3B5eFpn?=
 =?utf-8?B?VlZxZFM2TXE3c09qTkMwNnVIaG53eUpVMlJ5bjZXeE1YUjlCT1J6RjZnTFQ3?=
 =?utf-8?B?OEp5a1BzM1U1ZW1qU3ZoM1N3Z1Z1cUNXcWJ2VTl2dWpuTks3TFppNmdUcmh0?=
 =?utf-8?B?cUsrVmo5bUlRdmZZcDRXVDFGSHg5T1RlR2huaEM2eXlSdmdBYXBaS2dDSUhF?=
 =?utf-8?B?RXZyMlp3YTg5bUEwZ2VXSHA5Q1l0eDlxWUpPdmpGUThSeU1jY01vbko1ZGNU?=
 =?utf-8?B?N2w0RGlxU2lMTW56bE9lcDBWbmhEZFExVmlYcWZVQU5qaGZGRXNtT3Q4UWFJ?=
 =?utf-8?B?TS9hTERWeDRJTm9zM3RTaFN5dFNEMFczUzBCc2piN1N2TkcxR09kSU8wcWZU?=
 =?utf-8?B?RkR3V2NPT3F2cFVNMnJFMXJadkZ0SkpyZHJSbVN6cm5nUlRtY0ZiSkp6WmNu?=
 =?utf-8?B?NXVFSmhPZTdHVFFYektCR1NuNmdWV05iS3M1U0JOUkRsYnJwZVYvR3NzQTRZ?=
 =?utf-8?B?ZElkbEYxYjR5RHJVY29oSiszUFV3bkJuYUw3dzd3Rk1aaXRIMXNITkVBMG1D?=
 =?utf-8?B?cjVReXlYYkM2SDZoOWRCYTBRZ1l4R2NVN1ZxR2d5ZlFGVlQ5amZoRVBEOGUw?=
 =?utf-8?B?UUNiWVVvbTh0ellyekhmWEZaVmk0NWU3V3R6RC9UbWhKNW1iMVNrMjBqRzBW?=
 =?utf-8?B?TFpULzd5UHNwRThLcVY0YlVqcTczbGxCY2MvaUxHT2NyYUNVRHhPdlFDOGVy?=
 =?utf-8?B?ZVoyVHAramJjUTM1QlFCd1YraXd0SWt6Q3d2R0E5TUR4L0p6MW1FTUhuVkNO?=
 =?utf-8?B?aUcrUkJVMGt1bmJJQjJ3eVk5VlFhdDZ1V0YxK2I2K09zRjgxcjM2WmYxR2o3?=
 =?utf-8?B?S0FGOUx1UU80elJTMmZtRnN1VDVNQUM5RFYvS05Hbms0OTdOS1Z4b0JYb3Mv?=
 =?utf-8?B?N01YcjBhS2VDS1ZhNG1jMWN3cTBPTktaR2d1b2N2bHZTL0F3UlVUSEQzdWwr?=
 =?utf-8?B?ald0VVE5ZmU1NDBTclpneTBvajJyWUtERlprZUg3OTNkd3UxZmp0NmtqMjlX?=
 =?utf-8?B?NUNNS2NlUktJNXVyTUNHV3RXakdxSUoveE00UWIwbEZ5OEJLdUNZWC9OaWlY?=
 =?utf-8?B?UHg3SjRLSVlsQzlEeTYzUG00MFlNTGgzWUZwT01hTStGSFFjeXFGZzZXQ0tI?=
 =?utf-8?B?T1pDejA1b3lDV3JwSkZsSVR0blZlR3oxWGNVZnpCK09jb3FvWnl4bE1waE43?=
 =?utf-8?B?QWpBY0piUjdZVDg2M3p1OXZoMzA0d1NucW9QOEV0OEtRU0F2eHl1TFdOenB3?=
 =?utf-8?B?WW5wZUt4aUR4NTg0MU01eXFXMHIrL1FmNkoyeWJzRndiZkRydFY5aDlrdFFL?=
 =?utf-8?B?TWNjbEVkekY1UXhlZTI0b1ptZkx2WGg4VEV2cWpYRmtYaDdGTWdWaDg1UDRS?=
 =?utf-8?B?SFlOYkJRU0FCeGtDTWMvZkhMcjdvQVR1eWxvSXN4bDNQTjNkeXhvckNZWlpp?=
 =?utf-8?B?bTJUcjRYanN3ck9zdFAyOStaT2F5WkZRSWc4dVc5MG5ndVNXam1KcWM0YnBx?=
 =?utf-8?B?YVFjUkQwVHFPck5FU3lUSzROZ1NZeHJSWGZXN2tGMTNkWFlCS0gvYTdtOEwr?=
 =?utf-8?Q?fzRaF/nsrH9KIrYXYHQWwPmhrrc18j3L6WlcImn?=
Content-ID: <685CDB5314EEB3489CEF3055E5F66359@namprd11.prod.outlook.com>
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SN6PR11MB3229.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: c77f2d79-c880-448f-e15a-08d93c174564
X-MS-Exchange-CrossTenant-originalarrivaltime: 30 Jun 2021 22:34:49.4809 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: T0gNVwjb0r0scwluvKlH8mylZDZAy4W5yqzEViC7hA2/ye/d1n0rtdHefHDxflcYKASxgyjglysnj8T14SwI8XglqR152cJ4XPptVgmkfDM=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA2PR11MB4827
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [PATCH net-next v5 0/3] iavf: Fix init and
 watchdog state machines
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

On Mon, 2021-06-28 at 15:15 +0000, Mateusz Palczewski wrote:
> Use single state machine for driver initialization
> and for service initialized driver. The init state
> machine implemented in init_task() is merged
> into the watchdog_task(). The init_task() function
> is removed.
> 
> ---
> v5: Fixed the patch so that it applies on net-next tree
> v4: Removed unnecessary line
> v3: Added new file to patch series
> v2: Splitted the patch into 2 to make them smaller
> ---

This is still not applying. Jedrzej recently had apply issues as well.
could you get with him and see how he resolved it?

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
