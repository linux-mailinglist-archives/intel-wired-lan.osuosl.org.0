Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 4A5385F76A1
	for <lists+intel-wired-lan@lfdr.de>; Fri,  7 Oct 2022 12:09:35 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id E568361112;
	Fri,  7 Oct 2022 10:09:31 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org E568361112
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1665137371;
	bh=3jwGgziXWtvIgwQIf6Of1/DcR0laa13/kU5JrPzOvsA=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=mtD7k5p0Tma2juglnlmbPMJYEWOoYLqQ9pq+QBZeoCAsUU4LlSp0Hhv36YmMu/2ML
	 eqJrFU3JgCzA1MoslxoJn4p7cz1uDGLcxSKAksQD9iUGlSVf+1J0GK58X7IKqeeas/
	 GOO7NFS6ecC5A6Ya0LB4ULoEqIPoyN1NywwYWs1BAmv2k10rHeMBxOZCNUu2rI2dMH
	 5JF3wVZBwNzjC+nx9ADTBNKthAaTBjhzEt36t/cFou+13AVZdWkiLMbrFp4DFj1LIl
	 LyZxjZr/9sCBD5azi/uFi+FdCmZwOY9VHfdmRvsmFCX5CNsL6qLtgdl8hbdXOsc9do
	 /MB7RtLIYU3HA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id qPpgB8UI5je5; Fri,  7 Oct 2022 10:09:31 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id A2F4D60D58;
	Fri,  7 Oct 2022 10:09:30 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org A2F4D60D58
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 82BDF1BF360
 for <intel-wired-lan@lists.osuosl.org>; Fri,  7 Oct 2022 10:09:25 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 5A1D14190F
 for <intel-wired-lan@lists.osuosl.org>; Fri,  7 Oct 2022 10:09:25 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 5A1D14190F
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 4wr8E2WzfJnN for <intel-wired-lan@lists.osuosl.org>;
 Fri,  7 Oct 2022 10:09:23 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 5182341921
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 5182341921
 for <intel-wired-lan@lists.osuosl.org>; Fri,  7 Oct 2022 10:09:22 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10492"; a="301299488"
X-IronPort-AV: E=Sophos;i="5.95,166,1661842800"; d="scan'208";a="301299488"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Oct 2022 03:09:21 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10492"; a="870235576"
X-IronPort-AV: E=Sophos;i="5.95,166,1661842800"; d="scan'208";a="870235576"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by fmsmga006.fm.intel.com with ESMTP; 07 Oct 2022 03:09:21 -0700
Received: from orsmsx607.amr.corp.intel.com (10.22.229.20) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Fri, 7 Oct 2022 03:09:21 -0700
Received: from orsmsx607.amr.corp.intel.com (10.22.229.20) by
 ORSMSX607.amr.corp.intel.com (10.22.229.20) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Fri, 7 Oct 2022 03:09:20 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx607.amr.corp.intel.com (10.22.229.20) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31 via Frontend Transport; Fri, 7 Oct 2022 03:09:20 -0700
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.102)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2375.31; Fri, 7 Oct 2022 03:09:20 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=fqwQdcstk9DyNhs0ww0Ez2DS6NWnHPjYgZfFUKpI1tcWj+eTSTrRbsRB7MQiOv9tTkwQIHJcHUYQ7Pl2g2KLCpV38qHOfD3sgq43RUa/F9kw6KQkluDQYaj1+7NfrRTXjp0osP2Ljcg8MeiYm4Ae60jv599QZ4EzHApSsnzqLy0ZFVdaQX/1TZBs9Jg3qA2SXw4nPERyMRvmJ106W6Ng4xAN8NL1oQW1+Nzcgj8W8Cvc2QEhmBvF+oplilR1N3Oi/HYksWTaZTQbVkNbxwPl5TiI1sAdN85YAdelL8yHus6MoXN61pzAGyrApJhY6FpB0Cnn0p9CTBFqG2oug0kzYw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Kcs0qYthS6If0d3vQK8sEmuE2qP0g9mAmxycZJ1B/yo=;
 b=HbZxyJAj1TvU0ERyR89rHYI/PwRu0WhMLsZF80vnMluXIby3jUfbJ9rHfSc71J+sMyvNRRvD4vxNQLuOGpR4J03S/JkYQ4Bbc0So6xw/ta032fxydc16xx4VS69moZR1EusCPeOWAJPTWtY8Nm7rW4ISEyL2LblD+56J+kbd5kiyukSJ9tvb4I8NE9ewIpD9tTFPbI+sw8zA1IG5rLTpKKk4N80jbLjg95NKfbV/Dtfn7atTkTxfbeVIkoFiQ98XPhpjZV7DcibLvbIHmz6czLwN2ISUgDGKrPG5RI7dmk2stXbJHdWpNRKhSKmia+1l3g4ILlZOokNFU2jG9TWZfA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from PH7PR11MB5768.namprd11.prod.outlook.com (2603:10b6:510:131::21)
 by PH0PR11MB5593.namprd11.prod.outlook.com (2603:10b6:510:e0::15)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5676.24; Fri, 7 Oct
 2022 10:09:19 +0000
Received: from PH7PR11MB5768.namprd11.prod.outlook.com
 ([fe80::4d09:4f3c:3cf3:6ef8]) by PH7PR11MB5768.namprd11.prod.outlook.com
 ([fe80::4d09:4f3c:3cf3:6ef8%8]) with mapi id 15.20.5676.023; Fri, 7 Oct 2022
 10:09:19 +0000
From: "Dziedziuch, SylwesterX" <sylwesterx.dziedziuch@intel.com>
To: "Fijalkowski, Maciej" <maciej.fijalkowski@intel.com>, Paul Menzel
 <pmenzel@molgen.mpg.de>
Thread-Topic: [Intel-wired-lan] [PATCH net v1] i40e: Fix failure message when
 XDP is configured in TX only mode
Thread-Index: AQHY2h5Lvbm/GZFkNEG69Uq0g22Ih64CnDwAgAAC9wCAABLZkA==
Date: Fri, 7 Oct 2022 10:09:19 +0000
Message-ID: <PH7PR11MB5768C72DBB925E05890B32E3E65F9@PH7PR11MB5768.namprd11.prod.outlook.com>
References: <20221007072424.83543-1-mateusz.palczewski@intel.com>
 <a6c715b1-2c96-89ef-ee02-eb6e137e1b0e@molgen.mpg.de> <Yz/oHNiBzVh7FwNB@boxer>
In-Reply-To: <Yz/oHNiBzVh7FwNB@boxer>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-version: 11.6.500.17
dlp-reaction: no-action
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: PH7PR11MB5768:EE_|PH0PR11MB5593:EE_
x-ms-office365-filtering-correlation-id: 7bf9b3e0-4fa9-4c25-e59e-08daa84bffc4
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: zO9JwTJ9eZHp2Ikkk9G+4gxVavuU3JQvSPMKR9M4f0B6fTV6wXO23opWzq2wVAmG4bs7CxANa/Eo0h0G9VcGHoiayVJK3QqmzGYIR/fVZNbBMvwNot66kwYU3criKlbuXRZE/+whflnoS+jxiUg1cYRhwLHDhFp4xxB06K8U8rNT0PEyXfsKle56HT6+ZwHgJa4MNorrg1/DsvoupwAx/C8ahhj+HEasK9daZng7o35badN3M9oJ+zieqG+OQ7srBJb7B3+oUQMfU03Iug42j452Ow7HiCXyE9tqnXH4B6ZJbIvygx6vDdIIfbevrSjpvzbLTliSptMFcTNwdtbL97o2Rq2fYvX+R6rHL9e8qsy4MGW3u7oEvKi34SF+rnLsRXmci/Mn4lMHZzoU84Vy2Orb3y+5TrnhZGQ01re8YlTJ8rN8nE5NQQfVwkSocHcjlNmMGFd+IXAnG6FQhOSeooclT+NIOH9TLqfkYuVJpKwj8hLfmoRPksMzOYppeNcSZLtxSrnuip+HOP/ABCnIPDbYdNT4Uif+4vB+6UBhF8jjuvihrVYfJnzC2q7nyLmdpfA+PGCxTGo/eEG5Zt00+AcS/fW9wAuLlYZ7EEDIwrVabjqiDxVyroLKZ1IARr45VGn5CF8yLjKlRoaX22SXB74szjW3yZxTio01P/lQNcBQELb1MlC0OZSbfDDEj3of8CcMEnspMx9oh3DHynvioqbuzF7hk8cAsx4ZDrEB/WuZXZx1LKgTlWtB3sy+yRDWGModBJFHtEH5sBvpUkRvUbLY/hQDUwb4UZzGRGgV840=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH7PR11MB5768.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(376002)(39860400002)(366004)(396003)(346002)(136003)(451199015)(9686003)(53546011)(33656002)(478600001)(55016003)(38100700002)(38070700005)(122000001)(52536014)(71200400001)(54906003)(186003)(66446008)(76116006)(4326008)(316002)(110136005)(82960400001)(15650500001)(8676002)(5660300002)(66556008)(26005)(6506007)(8936002)(41300700001)(107886003)(7696005)(86362001)(966005)(66946007)(66476007)(64756008)(2906002)(83380400001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?MWZNU3hmVWxGUUhMbUZvUTV6WXdTMUxpL2FnWVBIMGhwZDRueTRGN0NYYmJC?=
 =?utf-8?B?MXlKTXV5NmN4TWQ4OE0rd2xQcjNuc1IwZTBIcExpNnpTdGkveGQ3cDEzdkxr?=
 =?utf-8?B?elhyeWJaY0RGcGhHNkhMeFNucHFvMVovU09xOFQ1YzhSQ2FKazd3UjRsZXBZ?=
 =?utf-8?B?cEN1cjVMOTFQSXVBaFVHajdSdzFsajZRYnREZUYzNW85TEljOGVidkdFTVE2?=
 =?utf-8?B?cTUzR2pNSU4vVzBCZHZBbGNlcVhrMlhLUnpBenMrbFg4aXJaenoxeWJyWVlZ?=
 =?utf-8?B?anJxWFBpVS9WdjdsVWRxSHhOQnltZVlNeDVDYzQraUNTZXFyWU9HeHdrNTdt?=
 =?utf-8?B?a0prTDZUaFRHanlDdFh0KzdFcUtTTmZWbW9vMmRLWG5GVWVkVXhiL1hOa0xo?=
 =?utf-8?B?WDJtV2VhWFp6QW00SVdXbXF4b2E4czh0aktVSEszeFFnMUJnNDJFWVlxbVBB?=
 =?utf-8?B?NUtJTGxJWVcwRHo4Tk1JajdUbU13WktoMEZ6YjdKNVYxZ3pjTHBMZzg1bWR6?=
 =?utf-8?B?RVo2WHpRbjhxMW5FM0lmOC9OTW40OTh4cUlzRkNYNXVZaU9UN0l6elRvWSs1?=
 =?utf-8?B?NUV4cFhDeHU4eHlJWnQrbkoxL3M0WWNPa2RidnBmaU9wVDNsTzduZ0pnZEth?=
 =?utf-8?B?aURZTkc2ajUvbnJNMXlwRk9EcG9ha3lRS2gzQ1JnK3JpaThUQ2Mrc2QwWU5q?=
 =?utf-8?B?eWVpQjd1NHZlZ0phUnZjbHFGQUJjd3c1RVFLWWJ0ZTBERVlEb3FiR1dnRUZE?=
 =?utf-8?B?TlFzSTZlcVpkOEJsWGthdkRoakxaaFdrdEJibWJXaG5DdDBlM2ExSGVnWXNn?=
 =?utf-8?B?WE5WN1BOT0gvTEtXdC8xQkNqKzd6ZjVuRVViSVR5MUVSNFR1OHR4SW1ueWZa?=
 =?utf-8?B?L0U0MUZCMy9LOGh5NjAxSVIrUzQydGgzUEV6TFF6UUdBR1d4NXlySFMraEp1?=
 =?utf-8?B?a2pScVZTOUw0QjA1bVdsVFdhQ0krMnVuZXQxanpxVjdqVGFUcmJ6My9BaW9D?=
 =?utf-8?B?bW1xQjNTYjMwM0lQTXNhR2tWZ2JZbWJnWFN3NG1ZOEFWZmZkTkoveTVySGNM?=
 =?utf-8?B?aDhHOGZjakI5dWl2TzNaaHVtUnQycEMzSUdyVFAzUm9DVkJPYURFTFlSdmJT?=
 =?utf-8?B?ZFE2MWlkaEFzSnFUTzhieDl3dTROQXQxWnlDd2VZdUVwQXN3aXdBaElUbVV1?=
 =?utf-8?B?eEJlQnRvb1JVbFF4aDJ1MjJjV01aTWNMb0tSUGFZdlR4TUVBR1gwYUZXa1Y3?=
 =?utf-8?B?Qno0UW1yU2N1Z0Y3U29Mbk9vZ3o5aWVTUk5ZSmlsL3FBejdxeXpEZXdDcjFX?=
 =?utf-8?B?VGhsZGZOaWdVV1lBZGJoUUtDVmdscjBJMzVzZzNmK3VJQ0U1RnBoTkY3RUtD?=
 =?utf-8?B?dW85UW1RNEJyTnlUcGl3aS9lSlRCVklNeVgzbVAreTFaZTIwQ3FRYUsyTVBi?=
 =?utf-8?B?VjhiL0c4bjMxVGN4RkNNcEtxSm9GSW1SOHlmWVJOQW9kMHNobk1ndGJkakFy?=
 =?utf-8?B?cEs5R21sZm1TRFduRzBDZU9reVp6V3VHQzJVcjV6RUZIaFMwTGcvWmcxTFNy?=
 =?utf-8?B?TTdiMWFMTDl6M1lEWWpTd0RkdnZvMDlLZCt6RGJkUE4rSHRMZXlLaVA5em54?=
 =?utf-8?B?a1dRSHQzdnFCRkF3Ty8vQ0V1MllXNC90UHU4STRCK0w4a3lqQ3lrN3VMWFlV?=
 =?utf-8?B?b0gvakRVeS81d1lEQVNUMHQyOUxGeUVuQTNEbGtwZDdPTjVzdGtEQkpGckgv?=
 =?utf-8?B?aE9TV05nOGd5TUNlckI5anQySWxPZWpIdzNNTml1cW9WdG10Y3RWR2duSVF2?=
 =?utf-8?B?azdteGQxaVh1RXZIaEdmTS8vd0pTa2NSeW96eENkK2V2dGRyOUhLVGhVMzBa?=
 =?utf-8?B?YU1qNjMrZ2F5dWlibDZHcFN2WXFrYXdYRDRlSVA2OFJtU0pYMzlkb2lFQzYz?=
 =?utf-8?B?a1lHVy9zbG5nV1RpbmJJRU1ORzEzemFqTnkyM3hDaXBDbU0xNDVqWEp4UmNG?=
 =?utf-8?B?eDNLU2RjZFZaOEc0WXJDQ1NGRHdCMHFMd21MaFJLTHpDUTNPU3RvWnBqbUp3?=
 =?utf-8?B?NUhWQ29RVWxRRXk1ejFTVnB2ZE1BS1pFNEhpZ0kyVEVOSFZKL3duZytiTXk0?=
 =?utf-8?B?Q29aMFc0VDYxd0hrZjBwNnVkTG1PdXRnaGFBeTVad0owUUlsVzFrS051dGY5?=
 =?utf-8?B?Znc9PQ==?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: PH7PR11MB5768.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 7bf9b3e0-4fa9-4c25-e59e-08daa84bffc4
X-MS-Exchange-CrossTenant-originalarrivaltime: 07 Oct 2022 10:09:19.2829 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: OVB6Qxk9Ftnk8JcICWUPIoLCUdAjmE6DZEfE47bmxBvtI0fYJvfuwzWsP6LEljz4qdqncb3ns+454WPeDor615UE5TsH3470QuN59HZPIzc=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH0PR11MB5593
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1665137363; x=1696673363;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=Kcs0qYthS6If0d3vQK8sEmuE2qP0g9mAmxycZJ1B/yo=;
 b=LSl7ANliPNdVhxfsl3lzEObNE8wVgvW/7E3eaVynEWKvG9jFffsh9xuK
 18iXQ4Fp8247V/zEK+A1eFIvyXV6V8nhnD5JBnXLzMgQ0vznsgXJoszUf
 BFjDXvEwfH8Zm+qSjjqK7K7ziaA6tp6rfz0oCBXJuF9Jtu3bWbb94/ks0
 ClWcfzryUamltH/wNzxSDwuESnmefviODvsLFS6scjuWkOtyAQ+ijicHx
 CGkyS0Mx1nrD04X8xXrj7lYKjm4Amczz40eCJlBZLiRaTqQ5k2cwSAz5M
 q4Fs/5jg7O9v2mJ2OWfFhOB2mQ3gPQj1LkdUYDSLBteQjA2PeFFNd6erG
 A==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=LSl7ANli
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net v1] i40e: Fix failure message when
 XDP is configured in TX only mode
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
Cc: "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "Karlsson, Magnus" <magnus.karlsson@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

T24gRnJpLCBPY3QgMDcsIDIwMjIgYXQgMTA6NTAgQU0sIEZpamFsa293c2tpLCBNYWNpZWogd3Jv
dGU6DQo+IA0KPiBPbiBGcmksIE9jdCAwNywgMjAyMiBhdCAxMDozODo1NkFNICswMjAwLCBQYXVs
IE1lbnplbCB3cm90ZToNCj4gPiBEZWFyIE1hdGV1c3osIGRlYXIgU3lsd2VzdGVyLA0KPiANCj4g
SGV5IGV2ZXJ5b25lLA0KDQpIZWxsbywNCg0KPiANCj4gPg0KPiA+DQo+ID4gVGhhbmsgeW91IGZv
ciB0aGUgcGF0Y2guDQo+ID4NCj4gPiBBbSAwNy4xMC4yMiB1bSAwOToyNCBzY2hyaWViIE1hdGV1
c3ogUGFsY3pld3NraToNCj4gPiA+IEZyb206IFN5bHdlc3RlciBEemllZHppdWNoIDxzeWx3ZXN0
ZXJ4LmR6aWVkeml1Y2hAaW50ZWwuY29tPg0KPiA+ID4NCj4gPiA+IFdoZW4gc3RhcnRpbmcgeGRw
c29jayBwcm9ncmFtIGluIFRYIG9ubHkgbW9kZToNCj4gPiA+DQo+ID4gPiBzYW1wbGVzL2JwZi94
ZHBzb2NrIC1pIDxpbnRlcmZhY2U+IC10DQo+ID4gPg0KPiA+ID4gdGhlcmUgd2FzIGFuIGVycm9y
IG9uIGk0MGUgZHJpdmVyOg0KPiANCj4gSXQncyBub3QgYSBzdHJpY3QgZXJyb3IsIHJhdGhlciBp
bmZvcm1hdGlvbiB3aGljaCB3ZSB0ZW5kIHRvIGlnbm9yZSBsYXRlbHkuDQo+IA0KPiA+ID4NCj4g
PiA+IEZhaWxlZCB0byBhbGxvY2F0ZSBzb21lIGJ1ZmZlcnMgb24gQUZfWERQIFpDIGVuYWJsZWQg
UnggcmluZyAwIChwZl9xDQo+ID4gPiA4MSkNCj4gPiA+DQo+ID4gPiBJdCB3YXMgY2F1c2VkIGJ5
IHRyeWluZyB0byBhbGxvY2F0ZSBSWCBidWZmZXJzIGV2ZW4gdGhvdWdoIG5vIFJYDQo+ID4gPiBi
dWZmZXJzIGFyZSBhdmFpbGFibGUgYmVjYXVzZSB3ZSBydW4gaW4gVFggb25seSBtb2RlLg0KPiA+
ID4NCj4gPiA+IEZpeCB0aGlzIGJ5IGNoZWNraW5nIGZvciBudW1iZXIgb2YgYXZhaWxhYmxlIGJ1
ZmZlcnMgZm9yIFJYIHF1ZXVlDQo+ID4gPiB3aGVuIGFsbG9jYXRpbmcgYnVmZmVycyBkdXJpbmcg
WERQIHNldHVwLg0KPiANCj4gQ0M6IE1hZ251cyBLYXJsc3NvbiA8bWFnbnVzLmthcmxzc29uQGlu
dGVsLmNvbT4NCj4gDQo+ID4gPg0KPiA+ID4gRml4ZXM6IDBhNzE0MTg2ZDNjMCAoImk0MGU6IGFk
ZCBBRl9YRFAgemVyby1jb3B5IFJ4IHN1cHBvcnQiKQ0KPiA+ID4gU2lnbmVkLW9mZi1ieTogU3ls
d2VzdGVyIER6aWVkeml1Y2gNCj4gPiA+IDxzeWx3ZXN0ZXJ4LmR6aWVkeml1Y2hAaW50ZWwuY29t
Pg0KPiA+ID4gU2lnbmVkLW9mZi1ieTogTWF0ZXVzeiBQYWxjemV3c2tpIDxtYXRldXN6LnBhbGN6
ZXdza2lAaW50ZWwuY29tPg0KPiA+ID4gLS0tDQo+ID4gPiAgIGRyaXZlcnMvbmV0L2V0aGVybmV0
L2ludGVsL2k0MGUvaTQwZV9tYWluLmMgfCA2ICsrKystLQ0KPiA+ID4gICAxIGZpbGUgY2hhbmdl
ZCwgNCBpbnNlcnRpb25zKCspLCAyIGRlbGV0aW9ucygtKQ0KPiA+ID4NCj4gPiA+IGRpZmYgLS1n
aXQgYS9kcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9pNDBlL2k0MGVfbWFpbi5jDQo+ID4gPiBi
L2RyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2k0MGUvaTQwZV9tYWluLmMNCj4gPiA+IGluZGV4
IGU4ZDFmYjhhOTY2Yi4uYzA2YmRjMDNkMmY0IDEwMDY0NA0KPiA+ID4gLS0tIGEvZHJpdmVycy9u
ZXQvZXRoZXJuZXQvaW50ZWwvaTQwZS9pNDBlX21haW4uYw0KPiA+ID4gKysrIGIvZHJpdmVycy9u
ZXQvZXRoZXJuZXQvaW50ZWwvaTQwZS9pNDBlX21haW4uYw0KPiA+ID4gQEAgLTM1NTQsNyArMzU1
NCw3IEBAIHN0YXRpYyBpbnQgaTQwZV9jb25maWd1cmVfcnhfcmluZyhzdHJ1Y3QNCj4gaTQwZV9y
aW5nICpyaW5nKQ0KPiA+ID4gICAJc3RydWN0IGk0MGVfaHcgKmh3ID0gJnZzaS0+YmFjay0+aHc7
DQo+ID4gPiAgIAlzdHJ1Y3QgaTQwZV9obWNfb2JqX3J4cSByeF9jdHg7DQo+ID4gPiAgIAlpNDBl
X3N0YXR1cyBlcnIgPSAwOw0KPiA+ID4gLQlib29sIG9rOw0KPiA+ID4gKwlib29sIG9rID0gdHJ1
ZTsNCj4gPiA+ICAgCWludCByZXQ7DQo+ID4gPiAgIAliaXRtYXBfemVybyhyaW5nLT5zdGF0ZSwg
X19JNDBFX1JJTkdfU1RBVEVfTkJJVFMpOyBAQCAtMzY1Miw3DQo+ID4gPiArMzY1Miw5IEBAIHN0
YXRpYyBpbnQgaTQwZV9jb25maWd1cmVfcnhfcmluZyhzdHJ1Y3QgaTQwZV9yaW5nICpyaW5nKQ0K
PiA+ID4gICAJaWYgKHJpbmctPnhza19wb29sKSB7DQo+ID4gPiAgIAkJeHNrX3Bvb2xfc2V0X3J4
cV9pbmZvKHJpbmctPnhza19wb29sLCAmcmluZy0+eGRwX3J4cSk7DQo+ID4gPiAtCQlvayA9IGk0
MGVfYWxsb2NfcnhfYnVmZmVyc196YyhyaW5nLA0KPiBJNDBFX0RFU0NfVU5VU0VEKHJpbmcpKTsN
Cj4gPiA+ICsJCWlmIChyaW5nLT54c2tfcG9vbC0+ZnJlZV9saXN0X2NudCkNCj4gPg0KPiA+IEkg
d291bGQgaGF2ZSB0aG91Z2h0LCB0aGF0IGluIHRoZSBlcnJvciBjYXNlLCBgb2tgIHNob3VsZCBi
ZQ0KPiA+IGluaXRpYWxpemVkIHRvIGBmYWxzZWAgKGF0IHRoZSB0b3ApLg0KPiANCj4gVGhlbiB0
aGlzIHBhdGNoIHdvdWxkIGJlIHBvaW50bGVzcy4gR3V5cyB3ZXJlIHByb2JhYmx5IGZpeGluZyBz
b21lIGRlZmVjdA0KPiByZXBvcnRlZCB0aGF0IHRoaXMgY29uZnVzaW5nIGVycm9yIG1lc3NhZ2Ug
d2FzIHBvcHBpbmcgdXAgaW4gZG1lc2cuIEhhdmluZw0KPiB0aGlzIGFzIGZhbHNlIHdvdWxkIGNh
dXNlIHRvIHN0aWxsIHByaW50IHRoaXMgb3V0Lg0KPiANCg0KSXQgaXMgZXhhY3RseSB3aGF0IE1h
Y2llaiB3cm90ZS4gSW4gY2FzZSB1c2VyIGRpZG4ndCBwcm92aWRlIGFueSBidWZmZXJzIHdlIGRv
bid0IG5lZWQNCnRvIHRyeSBhbGxvY2F0aW5nIHRoZW0gYXMgaXQgd2lsbCBmYWlsIGFueXdheS4g
SW4gdGhpcyBjYXNlIHdlIGtub3cgd2UgYXJlIHJ1bm5pbmcgaW4gVHggb25seSBtb2RlDQphbmQg
d2Ugc2hvdWxkIG5vdCBzY2FyZSB0aGUgdXNlciB3aXRoIHRoZSBmYWlsdXJlIG1lc3NhZ2Ugd2hp
Y2ggaXMgcHJpbnRlZCBpZiBvayBpcyBmYWxzZS4NClRoYXQgaXMgd2h5IHdlIGluaXRpYWxpemUg
b2sgdG8gdHJ1ZSBzbyBpbiBjYXNlIHRoZXJlIGFyZSBubyBidWZmZXJzIHdlIHNraXAgdGhlIGFs
bG9jYXRpb24NCmFuZCBkb24ndCBwcmludCB0aGUgZXJyb3IgbWVzc2FnZS4gSWYgdGhlcmUgYXJl
IHNvbWUgYnVmZmVycyBhdmFpbGFibGUgaG93ZXZlciBhbmQgdGhlIGFsbG9jYXRpb24NCmZhaWxz
IHRoZW4gb2sgd2lsbCBiZSBwcm9wZXJseSBzZXQgYnkgaTQwZV9hbGxvY19yeF9idWZmZXJzX3pj
IGFuZCB0aGUgZXJyb3IgbWVzc2FnZSB3aWxsDQpiZSBwcmludGVkLg0KDQo+ID4NCj4gPiA+ICsJ
CQlvayA9IGk0MGVfYWxsb2NfcnhfYnVmZmVyc196YyhyaW5nLA0KPiA+ID4gKw0KPiBJNDBFX0RF
U0NfVU5VU0VEKHJpbmcpKTsNCj4gPg0KPiA+IEFzIHlvdSBwYXNzIHJpbmcgdG8gYGk0MGVfYWxs
b2NfcnhfYnVmZmVyc196YygpYCwgY2Fu4oCZdCB0aGUgY2hlY2sgbm90DQo+ID4gYmUgZG9uZSB0
aGVyZT8NCj4gDQo+IEV2ZW4gaWYgd2Ugd291bGQgcHJvY2VlZCB3aXRoIHRoaXMgdGhlbiBubyBh
cyB0aGlzIHdvdWxkIGh1cnQgaG90IHBhdGgNCj4gY2FsbHNpdGUuDQo+IA0KPiA+DQo+ID4gPiAg
IAl9IGVsc2Ugew0KPiA+ID4gICAJCW9rID0gIWk0MGVfYWxsb2NfcnhfYnVmZmVycyhyaW5nLCBJ
NDBFX0RFU0NfVU5VU0VEKHJpbmcpKTsNCj4gPiA+ICAgCX0NCj4gPg0KPiA+DQo+ID4gS2luZCBy
ZWdhcmRzLA0KPiA+DQo+ID4gUGF1bA0KPiA+IF9fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fDQo+ID4gSW50ZWwtd2lyZWQtbGFuIG1haWxpbmcgbGlzdA0KPiA+
IEludGVsLXdpcmVkLWxhbkBvc3Vvc2wub3JnDQo+ID4gaHR0cHM6Ly9saXN0cy5vc3Vvc2wub3Jn
L21haWxtYW4vbGlzdGluZm8vaW50ZWwtd2lyZWQtbGFuDQpfX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC13aXJlZC1sYW4gbWFpbGluZyBsaXN0Cklu
dGVsLXdpcmVkLWxhbkBvc3Vvc2wub3JnCmh0dHBzOi8vbGlzdHMub3N1b3NsLm9yZy9tYWlsbWFu
L2xpc3RpbmZvL2ludGVsLXdpcmVkLWxhbgo=
