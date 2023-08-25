Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id CBBE4787DF0
	for <lists+intel-wired-lan@lfdr.de>; Fri, 25 Aug 2023 04:48:51 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 154E160F07;
	Fri, 25 Aug 2023 02:48:49 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 154E160F07
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1692931729;
	bh=itnbMYhhPM+TMaEq3ofpIVwbvKMfhyjgVi8ApUpQEHk=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=2ibmHvzrifVShM+7ZlmTmGXLcEQkpWwg2dPmMTbI7jCGbqTC678cmjClcNeiTOIte
	 WHJlUpmbbp0L1pUNw9oZ0eg1jf6S6wtBTvFeyeql4xlwq7JFcbWdJ0VF4q3USVEK0z
	 GBsU2IvTQFPNy5949nrl6GGzYanXNdmeqODd5fs1T9R2idkNlzRnOjZCcC3cel3b0g
	 iJ3VtKuTRFAdP+wc+nDE3IJ7Zov7CFZIA8aCLw2YLm5WmrEU76d+fthp1tGrGOS79b
	 YqqN45i3UjzulZGKrXyyi5QoznC51R2+rzbg/AzizAIZpDnOd9coOwDEFgWyo966ay
	 qYvegYbtD0clg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id agqknvhPCtQS; Fri, 25 Aug 2023 02:48:48 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 8239060596;
	Fri, 25 Aug 2023 02:48:47 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 8239060596
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id AFD491BF479
 for <intel-wired-lan@lists.osuosl.org>; Fri, 25 Aug 2023 02:48:41 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 84B2E40491
 for <intel-wired-lan@lists.osuosl.org>; Fri, 25 Aug 2023 02:48:41 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 84B2E40491
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 96QbzyjnBo2b for <intel-wired-lan@lists.osuosl.org>;
 Fri, 25 Aug 2023 02:48:40 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.43])
 by smtp2.osuosl.org (Postfix) with ESMTPS id EA18240223
 for <intel-wired-lan@lists.osuosl.org>; Fri, 25 Aug 2023 02:48:39 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org EA18240223
X-IronPort-AV: E=McAfee;i="6600,9927,10812"; a="460977945"
X-IronPort-AV: E=Sophos;i="6.02,195,1688454000"; d="scan'208";a="460977945"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Aug 2023 19:48:38 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10812"; a="737319252"
X-IronPort-AV: E=Sophos;i="6.02,195,1688454000"; d="scan'208";a="737319252"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by orsmga002.jf.intel.com with ESMTP; 24 Aug 2023 19:48:38 -0700
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27; Thu, 24 Aug 2023 19:48:37 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27; Thu, 24 Aug 2023 19:48:37 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27 via Frontend Transport; Thu, 24 Aug 2023 19:48:37 -0700
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (104.47.58.168)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.27; Thu, 24 Aug 2023 19:48:36 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=BeY7do6q04957eRF6OGiw/wIVjXRyLL7W90Q01gvBv4bMy9U8UM46vRTTgQ3HXpWau2Js600j6NE4noJbJrhLhDpHBdMR/HuH7SOzO3E1o+ElKBCEyNBgxZi6uAXZJURBIiHbAgpuI7cFloU0S0FR+gWu6wC5XNBr9Jp4B/w5lZytw3PAXnsOtsu90jqEGAljMcZrdP0bPv0DsFWYB6xn3mWu11dJnoltsent9L9aCWxAc7HCTGTmI/Z/o5texmMzrS0xdJw40US7vCs/m4oObFFhs5xBKdKmbEZUdhpGgR3Se64Jhb+7KhJPAWEPSMl6/R6hNLgl9hlnZb8gy7Crw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Fi44YVq8zxzYbM0gFyljrOPCD/d7akWA7QdSoTrvCrY=;
 b=h3OAyJRTOV4kLbmpWAZS245uKkprQ2o9mCIqDkonqvaFZE6RlgyZN7kUNGuf3ql77W2zPnsjN40Z4tsq+W/pYU/WEfDS4yhgvzONu16FQKe9wSyA/zyN98v+EK+xYUcRVwbtLsy3ni/TFZK1Fk3Awz10Dk8IcvMK1EWsxuA+H21elow6y5gehsgNyfVe4JBzBCL+qvQJd9BoLW1i60/z5FPDwlTNUONmcvHlVYVKa95buda0/yfGs5n4NdzwhmeP6kq9rb+aGk7hOJXEp9vEU5liuV7gJODzwQOD/gp56pnT8Sc1Xp1vOOamukW5/PnYneVS8/Rz5MhLFuudGBfGLQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM6PR11MB3723.namprd11.prod.outlook.com (2603:10b6:5:13f::25)
 by MN2PR11MB4647.namprd11.prod.outlook.com (2603:10b6:208:262::10) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6699.29; Fri, 25 Aug
 2023 02:48:34 +0000
Received: from DM6PR11MB3723.namprd11.prod.outlook.com
 ([fe80::ce6:bce1:eaf8:ad80]) by DM6PR11MB3723.namprd11.prod.outlook.com
 ([fe80::ce6:bce1:eaf8:ad80%7]) with mapi id 15.20.6699.020; Fri, 25 Aug 2023
 02:48:34 +0000
From: "Guo, Junfeng" <junfeng.guo@intel.com>
To: "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH net-next v4 00/15] Introduce the Parser
 Library
Thread-Index: AQHZ0O82HGAUKVpf0kCjrC+rnDAoQ6/wZRUAgAn0cVA=
Date: Fri, 25 Aug 2023 02:48:33 +0000
Message-ID: <DM6PR11MB3723B0A7ECEA7F8A06805D7BE7E3A@DM6PR11MB3723.namprd11.prod.outlook.com>
References: <20230817093442.2576997-2-junfeng.guo@intel.com>
 <20230817094240.2584745-1-junfeng.guo@intel.com>
 <ba8b1093-c68e-a707-8d89-edf7c7f07965@intel.com>
In-Reply-To: <ba8b1093-c68e-a707-8d89-edf7c7f07965@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM6PR11MB3723:EE_|MN2PR11MB4647:EE_
x-ms-office365-filtering-correlation-id: 254ac0d6-8971-4a56-70cb-08dba515c60f
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: Pm/IvyTOEuYNn0qBzbTzsGTuIW9CGsQUVIeA2LhtmuzScLCpOxIiUEogI3MerIulXSyM41Hvhr5yg24IiinT5QJg8oBGiyQ351QbH7BFpo7PCL2UgXom2QH+D//fsJgg7y1rqUpIza2+srEBVe+FBlrXcnayYiT/I3fOisYqpCPuMQCDIr0tZRC/6/7uGy8sdmLJB45sT/pNmGXXd4aKzF2b9yStGrDzxqZwRgyf6wSv8o8nzyRNyzzKMUMqgczjSku2PmjyTAxdtIhfFYRlGXswrGNfK53OMPkhejuVWaBrKDRY4Se2wjPGv6I9nIOXlP1c7c4nMuXLDF28CkLorYWgiucW6L4hNL8rMskK9V8xbHR0QlIdzRfcrMOSoy8UdUADoIk5W3COGw76Hi7GlHFxZ6QuKFX5DRKJ+ocKbiGoD0yCrNXHPMZAZWWIqNjdHODiofYaZgtq5ufrQuHim0BggF0ZGXQv0LJJ4ULmpXTHfXIa+prU+3TYFnP4v+XB6K2BDTkuJQPeJh3MQSaHiOirO0FShlwm6AX+gwv+G1LuOzTcC4PATRyDTpa48rFhEe94mme8JzTjdvBGuCZEibx+HSxlQyVbZqyoZZ/khaZgR2xgsQqk8GQXeP0dPlhQyGSsxX6mKgVGGuDin20c0A==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM6PR11MB3723.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(39860400002)(376002)(346002)(366004)(396003)(136003)(451199024)(1800799009)(186009)(82960400001)(122000001)(38070700005)(38100700002)(4326008)(8676002)(8936002)(41300700001)(53546011)(6506007)(7696005)(316002)(33656002)(66446008)(64756008)(54906003)(71200400001)(66476007)(66556008)(110136005)(76116006)(66946007)(86362001)(9686003)(55016003)(26005)(478600001)(83380400001)(966005)(2906002)(52536014)(107886003)(5660300002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?MldFcTJudVZlT3NVV3k1bHZ1U2RiSHRGaHBCTkxaaVRMQ3VwUXZqTHlrSS9k?=
 =?utf-8?B?aEZwTlBEMC9nNExaR3pzbENoTUpSczdyTHRvOENFSmpNa1RNMnlZVzkzOU9L?=
 =?utf-8?B?WndLSFlpRTFIUjJrRVZLNno2ei9GaDJ2RW1XZVNYeGVSSDFwNTV4OFM0VHBY?=
 =?utf-8?B?UVRXVjdJb2E5MkcyekVCNHRTeTl5dTZxM1BCSHRvVzdmNlF2T3F0YndURWpC?=
 =?utf-8?B?WHFrbTRvZHZOTWJOTENwWHd2dE1FcmdGcE11bGZyaU1Ma0xSa0Y5djZMcWJD?=
 =?utf-8?B?QjRLTXRiRDF1Yk1lSkZVQm9udXdkY2FOSE15bGVYMG1mTTA3RmZWVjUzYkd2?=
 =?utf-8?B?alZSd29VOCtPQmpERHpoR0xZejB5N3lPUjBuRFZuTFhmRzdSUExrNjdCUUJ5?=
 =?utf-8?B?Q3EyL3ZWOE9FWVdmU0Z6cHZOeEZ2UlhQSFRYQlVhZGNjc1MrdGhycE5ZWGhv?=
 =?utf-8?B?SXJpU1FzT0JvTjJhZ2tzdzJTWUtVdHhCRkxGVUNsOEJFREJTOFg1WE9uWnh3?=
 =?utf-8?B?dEVBRUZVSGF5NHVKZkpwbEdNanMwMm9WNlRQU1k3dDE2UisvSU9yZUo0eUFV?=
 =?utf-8?B?ZThiVkVYZVpCUnMrcDAxbDN0V2hEbXdBNVh5VFNIS2c1WUozYU5lTyszbXNU?=
 =?utf-8?B?NGRaMllsUzM1bWhVZW5xVi9pUGxqNjJJL1owRHozbXpDaHFUNERGQm5DOWoy?=
 =?utf-8?B?Wnh6a0hBUXJxZE5NSTJRaktTdTlUelZOZE5MT3pXRUVtekxPV2N5ZldiT1N1?=
 =?utf-8?B?aUlxT3dwZXY1ODd2cUdjY0tXVmJsakJadW9ZYm1qOFEvZEJVZHdDRkRWWE1K?=
 =?utf-8?B?Zjc0VGd0cFVZMFk1YUU2NWYzNU8yaGtWRVA4cHJHelFhUzEyT1FWMVRQWUFI?=
 =?utf-8?B?RUEyb2xyTUpsSFRtSEw5dUpQUU9jWVpwMGNBbXVBWTRwaE9lMWsvT2FFWGVF?=
 =?utf-8?B?NHhySWpXQWU2V3pZdUhGT2NodTVvRmI3SytQK0tkUUthdzgxM1ZUQmhEcmhZ?=
 =?utf-8?B?MDJKZGMwTGVBVmhGSllpZkxwNzdqak9wOVk1eDZ2WjlkUjJlK1AwWHJKZytz?=
 =?utf-8?B?UWo3STFMN2Y2OW1VeEdiY1pZM1FuREo1U3F2Vmd0OWMyTHpkMnl6SkgwQ0NZ?=
 =?utf-8?B?bnZ3eEZyQ1dRbHYrYWJXcU5rODBvUHhIdzhmaEhFWUthR0lpdnVtY0hheWRL?=
 =?utf-8?B?U2IwbjVvSnZaalJPYUNFV1dMWDZCcHdHRGRyZ1BTOS9GTG9UL2dtRWNqRnQy?=
 =?utf-8?B?cGpNcStrV056Undld1ROcldaL0RXSUhHOEdRRTdxSlRVbVVZbG5qRkYwZU1h?=
 =?utf-8?B?anRUdWsrMzlqLzlmQ0xZaFp1aWZsUmNoSHVNU2VwNzNybml1Y29aeDJKU3dL?=
 =?utf-8?B?THY3aXRvdjMveTBrNUlKL01KNE4rd2lJQlBPUmxBN3VPV1NPNVkxNzhkTFRP?=
 =?utf-8?B?eHd1NEdSYlJsWFZ0cDdQaDJVMU1VNzcvZGJMY1dYRmlYeXFUZmFQWWlFUnpl?=
 =?utf-8?B?Z3RwdURqR2Mzd0lkVUJpTWNrYXdTZWh0MmJSajlSRzczMlUxdEl5NGM0Ukp5?=
 =?utf-8?B?L2U1ZnUzRm9KbnNpd0x4OWg4NnNKRFNwTG5UNG55ZW50M2dRRVdHSnBEMkxI?=
 =?utf-8?B?UEw5bUF0c0RPT1k4ck5tTndiRThWZXRJd1hBRTVibjN3V2lURWk3ZU5RZ0VZ?=
 =?utf-8?B?d1A3bXVVeU1RMld3bFduQWMwdHpBSzNmdTdJL29EYWJUclBBMnFrdUVEUlo3?=
 =?utf-8?B?RzJUMkV4dHl2UTZGMmc4NWpVcEZRQmVrcC9XUGdHeTlpNzJEU1FYMWtHUXFo?=
 =?utf-8?B?UnRPUE1pRnExb0JtRG5peVJQUFkyTUFnM3dWeU9LNy9QRVZ3VnBXRVUvTjVQ?=
 =?utf-8?B?VERBUHdDQVg2b2lzQm5BSGI0SWU3WDJaZFd0YUJpMFhXU0UvbFY4Rms2RmpM?=
 =?utf-8?B?UHljSDZyZkhSeE9LNjFuRjRHQ2tUaGEvL3FkTE5nbVF5VVEzMjVlVmdyK1dK?=
 =?utf-8?B?anRQai95eXdIUGMvVUo4cHdpQ3VXT1M0Njg5SjZlaGhhVDVmRlRUNWoxSVp2?=
 =?utf-8?B?MWN6MHZGdE1QRExlL2k1V0VtV3ZsZGFkNFBSQjJvS3NKclN1b2hWVnVsYnRL?=
 =?utf-8?Q?tOMiUz92TF0Xa36pyIwC0SOuC?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM6PR11MB3723.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 254ac0d6-8971-4a56-70cb-08dba515c60f
X-MS-Exchange-CrossTenant-originalarrivaltime: 25 Aug 2023 02:48:33.8716 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: GzVYzlnAT0d4FSsJLbUCGRfR45WfJQFD6IKvrUz1xz0EuArwrb6ZXT99BptZZe2BVacqo35guIL99+7JwnLJVQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR11MB4647
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1692931720; x=1724467720;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=Fi44YVq8zxzYbM0gFyljrOPCD/d7akWA7QdSoTrvCrY=;
 b=PcF7QU2f+Ht35tfMP9fGVNLr4uv1V9dpPyPGTlXw/Ww8Jj4DVSFqZ5Hy
 n6FEdrAiSy+e/uZDyaJF1gDamcLS88avUaKp4JwJGA2v0hVqWtISV1QPR
 BeqRnq2m21p8MHzZyG/9zXhi9HbCC6Qi2KuQOGkFpFEf8gZUGBTK0SnmT
 akTZKRpOT64KkipYTxXI0jlhPBMtVReNTd5Hkr5thhUZeZHbOuDcm2B/o
 YdFAP2CoJDn5nj0heta86e1r32EOnEdDL3fS09wq5pfLqR7FgBKOtT1gO
 SLJNiSAbUwoTtNNlp/dIPEK7FUEXIyUMy9EcV4WAZMkj03zVyhQB7oGdE
 A==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=PcF7QU2f
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net-next v4 00/15] Introduce the
 Parser Library
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
Cc: ivecera <ivecera@redhat.com>, "Zhang, Qi Z" <qi.z.zhang@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

DQoNCj4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCj4gRnJvbTogTmd1eWVuLCBBbnRob255
IEwgPGFudGhvbnkubC5uZ3V5ZW5AaW50ZWwuY29tPg0KPiBTZW50OiBTYXR1cmRheSwgQXVndXN0
IDE5LCAyMDIzIDAyOjQxDQo+IFRvOiBHdW8sIEp1bmZlbmcgPGp1bmZlbmcuZ3VvQGludGVsLmNv
bT47IGludGVsLXdpcmVkLQ0KPiBsYW5AbGlzdHMub3N1b3NsLm9yZw0KPiBDYzogaXZlY2VyYSA8
aXZlY2VyYUByZWRoYXQuY29tPjsgWmhhbmcsIFFpIFogPHFpLnouemhhbmdAaW50ZWwuY29tPg0K
PiBTdWJqZWN0OiBSZTogW0ludGVsLXdpcmVkLWxhbl0gW1BBVENIIG5ldC1uZXh0IHY0IDAwLzE1
XSBJbnRyb2R1Y2UgdGhlDQo+IFBhcnNlciBMaWJyYXJ5DQo+IA0KPiBPbiA4LzE3LzIwMjMgMjo0
MiBBTSwgSnVuZmVuZyBHdW8gd3JvdGU6DQo+IA0KPiBJIGFzc3VtZSB0aGVzZSBhcmUgZm9yIElX
TCwgc28gaXQgc2hvdWxkIGJlIGl3bC1uZXh0LCBub3QgbmV0LW5leHQuDQo+IEFsc28sIHBsZWFz
ZSBjYyBuZXRkZXYgb24gdGhlc2UgcGF0Y2hlcy4NCg0KSGkgVG9ueSwNCg0KU28gdGhlIGFib3Zl
IHN1Z2dlc3Rpb24gb2YgInBsZWFzZSBjYyBuZXRkZXYgb24gdGhlc2UgcGF0Y2hlcyIganVzdCBt
ZWFucyB0byBzZW5kIG5ldyBwYXRjaCBzZXJpZXMgYXQgbmV0ZGV2IGZyb20gdjEsIGFuZCBzdG9w
IGNjIGl3bD8NCkxpa2VseSBJIG1pc3VuZGVyc3Rvb2QgdGhpcyBjb21tZW50LiBJIGp1c3Qga2Vw
dCB1cGRhdGluZyBuZXcgc2VyaWVzIGFsc28gd2l0aCBuZXRkZXYgY2MnZWQgZnJvbSB2NS4NCg0K
SXMgdGhlcmUgYW55dGhpbmcgSSBjYW4gZG8gdG8gZml4IHRoZSBtaXN0YWtlPw0KDQpSZWdhcmRz
LA0KSnVuZmVuZw0KDQo+IA0KPiA+IEN1cnJlbnQgc29mdHdhcmUgYXJjaGl0ZWN0dXJlIGZvciBm
bG93IGZpbHRlcmluZyBvZmZsb2FkaW5nIGxpbWl0ZWQNCj4gPiB0aGUgY2FwYWJpbGl0eSBvZiBJ
bnRlbO+/vSBFdGhlcm5ldCA4MDAgU2VyaWVzIER5bmFtaWMgRGV2aWNlDQo+ID4gUGVyc29uYWxp
emF0aW9uIChERFApIFBhY2thZ2UuIFRoZSBmbG93IGZpbHRlcmluZyBvZmZsb2FkaW5nIGluIHRo
ZQ0KPiA+IGRyaXZlciBpcyBlbmFibGVkIGJhc2VkIG9uIHRoZSBuYW1pbmcgcGFyc2VycywgZWFj
aCBmbG93IHBhdHRlcm4gaXMNCj4gPiByZXByZXNlbnRlZCBieSBhIHByb3RvY29sIGhlYWRlciBz
dGFjay4gQW5kIHRoZXJlIGFyZSBtdWx0aXBsZQ0KPiBsYXllcnMNCj4gPiAoZS5nLiwgdmlydGNo
bmwpIHRvIG1haW50YWluIHRoZWlyIG93biBlbnVtL21hY3JvL3N0cnVjdHVyZQ0KPiA+IHRvIHJl
cHJlc2VudCBhIHByb3RvY29sIGhlYWRlciAoSVAsIFRDUCwgVURQIC4uLiksIHRodXMgdGhlIGV4
dHJhDQo+ID4gcGFyc2VycyB0byB2ZXJpZnkgaWYgYSBwYXR0ZXJuIGlzIHN1cHBvcnRlZCBieSBo
YXJkd2FyZSBvciBub3QgYXMNCj4gPiB3ZWxsIGFzIHRoZSBleHRyYSBjb252ZXJ0ZXJzIHRoYXQg
dG8gdHJhbnNsYXRlIHJlcHJlc2VudHMgYmV0d2Vlbg0KPiA+IGRpZmZlcmVudCBsYXllcnMuIEV2
ZXJ5IHRpbWUgYSBuZXcgcHJvdG9jb2wvZmllbGQgaXMgcmVxdWVzdGVkIHRvIGJlDQo+ID4gc3Vw
cG9ydGVkLCB0aGUgY29ycmVzcG9uZGluZyBsb2dpYyBmb3IgdGhlIHBhcnNlcnMgYW5kIHRoZQ0K
PiBjb252ZXJ0ZXJzDQo+ID4gbmVlZHMgdG8gYmUgbW9kaWZpZWQgYWNjb3JkaW5nbHkuIFRodXMs
IGh1Z2UgJiByZWR1bmRhbnQgZWZmb3J0cw0KPiBhcmUNCj4gPiByZXF1aXJlZCB0byBzdXBwb3J0
IHRoZSBpbmNyZWFzaW5nIGZsb3cgZmlsdGVyaW5nIG9mZmxvYWRpbmcgZmVhdHVyZXMsDQo+ID4g
ZXNwZWNpYWxseSBmb3IgdGhlIHR1bm5lbCB0eXBlcyBmbG93IGZpbHRlcmluZy4NCj4gPg0KPiA+
IFRoaXMgcGF0Y2ggc2V0IHByb3ZpZGVzIGEgd2F5IGZvciBhcHBsaWNhdGlvbnMgdG8gc2VuZCBk
b3duIHRyYWluaW5nDQo+ID4gcGFja2V0cyAmIG1hc2tzIChpbiBiaW5hcnkpIHRvIHRoZSBkcml2
ZXIuIFRoZW4gdGhlc2UgYmluYXJ5IGRhdGENCj4gPiB3b3VsZCBiZSB1c2VkIGJ5IHRoZSBkcml2
ZXIgdG8gZ2VuZXJhdGUgY2VydGFpbiBkYXRhIHRoYXQgYXJlDQo+IG5lZWRlZA0KPiA+IHRvIGNy
ZWF0ZSBhIGZpbHRlciBydWxlIGluIHRoZSBmaWx0ZXJpbmcgc3RhZ2Ugb2Ygc3dpdGNoL1JTUy9G
RElSLg0KPiA+DQo+ID4gTm90ZSB0aGF0IHRoZSBpbXBhY3Qgb2YgYSBtYWxpY2lvdXMgcnVsZSBp
biB0aGUgcmF3IHBhY2tldCBmaWx0ZXIgaXMNCj4gPiBsaW1pdGVkIHRvIHBlcmZvcm1hbmNlIHJh
dGhlciB0aGFuIGZ1bmN0aW9uYWxpdHkuIEl0IG1heSBhZmZlY3QgdGhlDQo+ID4gcGVyZm9ybWFu
Y2Ugb2YgdGhlIHdvcmtsb2FkLCBzaW1pbGFyIHRvIG90aGVyIGxpbWl0YXRpb25zIGluDQo+IEZE
SVIvUlNTDQo+ID4gb24gQVZGLiBGb3IgZXhhbXBsZSwgdGhlcmUgaXMgbm8gcmVzb3VyY2UgYm91
bmRhcnkgZm9yIFZGIEZESVIvUlNTDQo+ID4gcnVsZXMsIHNvIG9uZSBtYWxpY2lvdXMgVkYgY291
bGQgcG90ZW50aWFsbHkgbWFrZSBvdGhlciBWRnMNCj4gPiBpbmVmZmljaWVudCBpbiBvZmZsb2Fk
aW5nLg0KPiA+DQo+ID4gVGhlIHBhcnNlciBsaWJyYXJ5IGlzIGV4cGVjdGVkIHRvIGluY2x1ZGUg
Ym91bmRhcnkgY2hlY2tzIHRvIHByZXZlbnQNCj4gPiBjcml0aWNhbCBlcnJvcnMgc3VjaCBhcyBp
bmZpbml0ZSBsb29wcyBvciBzZWdtZW50YXRpb24gZmF1bHRzLg0KPiA+IEhvd2V2ZXIsIG9ubHkg
aW1wbGVtZW50aW5nIGFuZCB2YWxpZGF0aW5nIHRoZSBwYXJzZXIgZW11bGF0b3IgaW4gYQ0KPiA+
IHNhbmRib3ggZW52aXJvbm1lbnQgKGxpa2UgZWJwZikgcHJlc2VudHMgYSBjaGFsbGVuZ2UuDQo+
ID4NCj4gPiBUaGUgaWRlYSBpcyB0byBtYWtlIHRoZSBkcml2ZXIgYmUgYWJsZSB0byBsZWFybiBm
cm9tIHRoZSBERFAgcGFja2FnZQ0KPiA+IGRpcmVjdGx5IHRvIHVuZGVyc3RhbmQgaG93IHRoZSBo
YXJkd2FyZSBwYXJzZXIgd29ya3MgKGkuZS4sIHRoZQ0KPiA+IFBhcnNlciBMaWJyYXJ5KSwgc28g
dGhhdCBpdCBjYW4gcHJvY2VzcyBvbiB0aGUgcmF3IHRyYWluaW5nIHBhY2tldA0KPiA+IChpbiBi
aW5hcnkpIGRpcmVjdGx5IGFuZCBjcmVhdGUgdGhlIGZpbHRlciBydWxlIGFjY29yZGluZ2x5Lg0K
PiA+DQo+ID4gQmFzZWQgb24gdGhpcyBQYXJzZXIgTGlicmFyeSwgdGhlIHJhdyBmbG93IGZpbHRl
cmluZyBvZg0KPiA+IHN3aXRjaC9SU1MvRkRJUiBjb3VsZCBiZSBlbmFibGVkIHRvIGFsbG93IG5l
dyBmbG93IGZpbHRlcmluZw0KPiA+IG9mZmxvYWRpbmcgZmVhdHVyZXMgdG8gYmUgc3VwcG9ydGVk
IHdpdGhvdXQgYW55IGRyaXZlciBjaGFuZ2VzIChvbmx5DQo+ID4gbmVlZCB0byB1cGRhdGUgdGhl
IEREUCBwYWNrYWdlKS4NCj4gPg0KPiA+DQo+ID4gdjQ6DQo+ID4gLSBVcGRhdGUgY292ZXIgbGV0
dGVyIHNlcmllcyB0aXRsZS4NCj4gPg0KPiA+IHYzOg0KPiA+IC0gUmVwbGFjZSBtYWdpYyBoYXJk
Y29kZWQgdmFsdWVzIHdpdGggbWFjcm9zLg0KPiA+IC0gVXNlIHNpemVfdCB0byBhdm9pZCBzdXBl
cmZsdW91cyB0eXBlIGNhc3QgdG8gdWludHB0cl90IGluIGZ1bmN0aW9uDQo+ID4gICAgaWNlX3Bh
cnNlcl9zZWN0X2l0ZW1fZ2V0Lg0KPiA+IC0gUHJlZml4IGZvciBzdGF0aWMgbG9jYWwgZnVuY3Rp
b24gbmFtZXMgdG8gYXZvaWQgbmFtZXNwYWNlIHBvbGx1dGlvbi4NCj4gPiAtIFVzZSBzdHJzdGFy
dHMoKSBmdW5jdGlvbiBpbnN0ZWFkIG9mIHNlbGYgaW1wbGVtZW50YXRpb24uDQo+ID4NCj4gPiB2
MjoNCj4gPiAtIEZpeCBidWlsZCB3YXJuaW5ncy4NCj4gPiB8IFJlcG9ydGVkLWJ5OiBrZXJuZWwg
dGVzdCByb2JvdCA8bGtwQGludGVsLmNvbT4NCj4gPiB8IENsb3NlczogaHR0cHM6Ly9sb3JlLmtl
cm5lbC5vcmcvb2Uta2J1aWxkLQ0KPiBhbGwvMjAyMzA2MDUxMjQ2LmpjZTV5U1FtLWxrcEBpbnRl
bC5jb20vDQo+IA0KPiBJJ20gbm90IHN1cmUgaG93IHlvdSBhcmUgc2VuZGluZyB0aGVzZSwgYnV0
IHRoZSB0aHJlYWRpbmcgb24gdGhlc2UgaXMNCj4gb2ZmIFsxXS4NCj4gDQo+IEFsbCB0aGUgY29w
eXJpZ2h0cyBzaG91bGQgYmUgMjAyMyBvbmx5LCBub3QgMjAxOC0yMDIzLg0KPiANCj4gVGhlcmUn
cyBhIHR5cG8gb24gcGF0Y2ggMjoNCj4gV0FSTklORzogJ2FycmFyeScgbWF5IGJlIG1pc3NwZWxs
ZWQgLSBwZXJoYXBzICdhcnJheSc/DQo+IA0KPiBUaGFua3MsDQo+IFRvbnkNCj4gDQo+IFsxXQ0K
PiBodHRwczovL2xvcmUua2VybmVsLm9yZy9pbnRlbC13aXJlZC1sYW4vMjAyMzA2MDUwNTQ2NDEu
Mjg2NTE0Mi0xLQ0KPiBqdW5mZW5nLmd1b0BpbnRlbC5jb20vVC8jdA0KPiANCj4gPiBKdW5mZW5n
IEd1byAoMTUpOg0KPiA+ICAgIGljZTogYWRkIHBhcnNlciBjcmVhdGUgYW5kIGRlc3Ryb3kgc2tl
bGV0b24NCj4gPiAgICBpY2U6IGluaXQgaW1lbSB0YWJsZSBmb3IgcGFyc2VyDQo+ID4gICAgaWNl
OiBpbml0IG1ldGFpbml0IHRhYmxlIGZvciBwYXJzZXINCj4gPiAgICBpY2U6IGluaXQgcGFyc2Ug
Z3JhcGggY2FtIHRhYmxlcyBmb3IgcGFyc2VyDQo+ID4gICAgaWNlOiBpbml0IGJvb3N0IHRjYW0g
YW5kIGxhYmVsIHRhYmxlcyBmb3IgcGFyc2VyDQo+ID4gICAgaWNlOiBpbml0IHB0eXBlIG1hcmtl
ciB0Y2FtIHRhYmxlIGZvciBwYXJzZXINCj4gPiAgICBpY2U6IGluaXQgbWFya2VyIGFuZCBwcm90
b2NvbCBncm91cCB0YWJsZXMgZm9yIHBhcnNlcg0KPiA+ICAgIGljZTogaW5pdCBmbGFnIHJlZGly
ZWN0IHRhYmxlIGZvciBwYXJzZXINCj4gPiAgICBpY2U6IGluaXQgWExUIGtleSBidWlsZGVyIGZv
ciBwYXJzZXINCj4gPiAgICBpY2U6IGFkZCBwYXJzZXIgcnVudGltZSBza2VsZXRvbg0KPiA+ICAg
IGljZTogYWRkIGludGVybmFsIGhlbHAgZnVuY3Rpb25zDQo+ID4gICAgaWNlOiBhZGQgcGFyc2Vy
IGV4ZWN1dGlvbiBtYWluIGxvb3ANCj4gPiAgICBpY2U6IHN1cHBvcnQgZG91YmxlIHZsYW4gbW9k
ZSBjb25maWd1cmUgZm9yIHBhcnNlcg0KPiA+ICAgIGljZTogYWRkIHR1bm5lbCBwb3J0IHN1cHBv
cnQgZm9yIHBhcnNlcg0KPiA+ICAgIGljZTogYWRkIEFQSSBmb3IgcGFyc2VyIHByb2ZpbGUgaW5p
dGlhbGl6YXRpb24NCj4gPg0KPiA+ICAgZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvaWNlL01h
a2VmaWxlICAgICAgIHwgIDExICsNCj4gPiAgIGRyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2lj
ZS9pY2VfYnN0X3RjYW0uYyB8IDMxMyArKysrKysrDQo+ID4gICBkcml2ZXJzL25ldC9ldGhlcm5l
dC9pbnRlbC9pY2UvaWNlX2JzdF90Y2FtLmggfCAgNTIgKysNCj4gPiAgIGRyaXZlcnMvbmV0L2V0
aGVybmV0L2ludGVsL2ljZS9pY2VfY29tbW9uLmggICB8ICAgNCArDQo+ID4gICBkcml2ZXJzL25l
dC9ldGhlcm5ldC9pbnRlbC9pY2UvaWNlX2RkcC5jICAgICAgfCAgMTAgKy0NCj4gPiAgIGRyaXZl
cnMvbmV0L2V0aGVybmV0L2ludGVsL2ljZS9pY2VfZGRwLmggICAgICB8ICAxNCArDQo+ID4gICBk
cml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9pY2UvaWNlX2ZsZ19yZC5jICAgfCAgNzMgKysNCj4g
PiAgIGRyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2ljZS9pY2VfZmxnX3JkLmggICB8ICAyNCAr
DQo+ID4gICBkcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9pY2UvaWNlX2ltZW0uYyAgICAgfCAy
NzkgKysrKysrDQo+ID4gICBkcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9pY2UvaWNlX2ltZW0u
aCAgICAgfCAyMTcgKysrKysNCj4gPiAgIGRyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2ljZS9p
Y2VfbWV0YWluaXQuYyB8IDE4MSArKysrDQo+ID4gICBkcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRl
bC9pY2UvaWNlX21ldGFpbml0LmggfCAxMDQgKysrDQo+ID4gICBkcml2ZXJzL25ldC9ldGhlcm5l
dC9pbnRlbC9pY2UvaWNlX21rX2dycC5jICAgfCAgNTEgKw0KPiA+ICAgZHJpdmVycy9uZXQvZXRo
ZXJuZXQvaW50ZWwvaWNlL2ljZV9ta19ncnAuaCAgIHwgIDE3ICsNCj4gPiAgIGRyaXZlcnMvbmV0
L2V0aGVybmV0L2ludGVsL2ljZS9pY2VfcGFyc2VyLmMgICB8IDU2MiArKysrKysrKysrKw0KPiA+
ICAgZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvaWNlL2ljZV9wYXJzZXIuaCAgIHwgMTQwICsr
Kw0KPiA+ICAgLi4uL25ldC9ldGhlcm5ldC9pbnRlbC9pY2UvaWNlX3BhcnNlcl9ydC5jICAgIHwg
ODc3DQo+ICsrKysrKysrKysrKysrKysrKw0KPiA+ICAgLi4uL25ldC9ldGhlcm5ldC9pbnRlbC9p
Y2UvaWNlX3BhcnNlcl9ydC5oICAgIHwgIDczICsrDQo+ID4gICAuLi4vbmV0L2V0aGVybmV0L2lu
dGVsL2ljZS9pY2VfcGFyc2VyX3V0aWwuaCAgfCAgMzcgKw0KPiA+ICAgZHJpdmVycy9uZXQvZXRo
ZXJuZXQvaW50ZWwvaWNlL2ljZV9wZ19jYW0uYyAgIHwgMzk3ICsrKysrKysrDQo+ID4gICBkcml2
ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9pY2UvaWNlX3BnX2NhbS5oICAgfCAxNDIgKysrDQo+ID4g
ICAuLi4vbmV0L2V0aGVybmV0L2ludGVsL2ljZS9pY2VfcHJvdG9fZ3JwLmMgICAgfCAgOTAgKysN
Cj4gPiAgIC4uLi9uZXQvZXRoZXJuZXQvaW50ZWwvaWNlL2ljZV9wcm90b19ncnAuaCAgICB8ICAz
MSArDQo+ID4gICBkcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9pY2UvaWNlX3B0eXBlX21rLmMg
fCAgNzMgKysNCj4gPiAgIGRyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2ljZS9pY2VfcHR5cGVf
bWsuaCB8ICAyMyArDQo+ID4gICBkcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9pY2UvaWNlX3Rt
YXRjaC5oICAgfCAgNDAgKw0KPiA+ICAgZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvaWNlL2lj
ZV90eXBlLmggICAgIHwgICAxICsNCj4gPiAgIGRyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2lj
ZS9pY2VfeGx0X2tiLmMgICB8IDI2MiArKysrKysNCj4gPiAgIGRyaXZlcnMvbmV0L2V0aGVybmV0
L2ludGVsL2ljZS9pY2VfeGx0X2tiLmggICB8ICA4MCArKw0KPiA+ICAgMjkgZmlsZXMgY2hhbmdl
ZCwgNDE3MyBpbnNlcnRpb25zKCspLCA1IGRlbGV0aW9ucygtKQ0KPiA+ICAgY3JlYXRlIG1vZGUg
MTAwNjQ0IGRyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2ljZS9pY2VfYnN0X3RjYW0uYw0KPiA+
ICAgY3JlYXRlIG1vZGUgMTAwNjQ0IGRyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2ljZS9pY2Vf
YnN0X3RjYW0uaA0KPiA+ICAgY3JlYXRlIG1vZGUgMTAwNjQ0IGRyaXZlcnMvbmV0L2V0aGVybmV0
L2ludGVsL2ljZS9pY2VfZmxnX3JkLmMNCj4gPiAgIGNyZWF0ZSBtb2RlIDEwMDY0NCBkcml2ZXJz
L25ldC9ldGhlcm5ldC9pbnRlbC9pY2UvaWNlX2ZsZ19yZC5oDQo+ID4gICBjcmVhdGUgbW9kZSAx
MDA2NDQgZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvaWNlL2ljZV9pbWVtLmMNCj4gPiAgIGNy
ZWF0ZSBtb2RlIDEwMDY0NCBkcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9pY2UvaWNlX2ltZW0u
aA0KPiA+ICAgY3JlYXRlIG1vZGUgMTAwNjQ0IGRyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2lj
ZS9pY2VfbWV0YWluaXQuYw0KPiA+ICAgY3JlYXRlIG1vZGUgMTAwNjQ0IGRyaXZlcnMvbmV0L2V0
aGVybmV0L2ludGVsL2ljZS9pY2VfbWV0YWluaXQuaA0KPiA+ICAgY3JlYXRlIG1vZGUgMTAwNjQ0
IGRyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2ljZS9pY2VfbWtfZ3JwLmMNCj4gPiAgIGNyZWF0
ZSBtb2RlIDEwMDY0NCBkcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9pY2UvaWNlX21rX2dycC5o
DQo+ID4gICBjcmVhdGUgbW9kZSAxMDA2NDQgZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvaWNl
L2ljZV9wYXJzZXIuYw0KPiA+ICAgY3JlYXRlIG1vZGUgMTAwNjQ0IGRyaXZlcnMvbmV0L2V0aGVy
bmV0L2ludGVsL2ljZS9pY2VfcGFyc2VyLmgNCj4gPiAgIGNyZWF0ZSBtb2RlIDEwMDY0NCBkcml2
ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9pY2UvaWNlX3BhcnNlcl9ydC5jDQo+ID4gICBjcmVhdGUg
bW9kZSAxMDA2NDQgZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvaWNlL2ljZV9wYXJzZXJfcnQu
aA0KPiA+ICAgY3JlYXRlIG1vZGUgMTAwNjQ0DQo+IGRyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVs
L2ljZS9pY2VfcGFyc2VyX3V0aWwuaA0KPiA+ICAgY3JlYXRlIG1vZGUgMTAwNjQ0IGRyaXZlcnMv
bmV0L2V0aGVybmV0L2ludGVsL2ljZS9pY2VfcGdfY2FtLmMNCj4gPiAgIGNyZWF0ZSBtb2RlIDEw
MDY0NCBkcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9pY2UvaWNlX3BnX2NhbS5oDQo+ID4gICBj
cmVhdGUgbW9kZSAxMDA2NDQgZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvaWNlL2ljZV9wcm90
b19ncnAuYw0KPiA+ICAgY3JlYXRlIG1vZGUgMTAwNjQ0IGRyaXZlcnMvbmV0L2V0aGVybmV0L2lu
dGVsL2ljZS9pY2VfcHJvdG9fZ3JwLmgNCj4gPiAgIGNyZWF0ZSBtb2RlIDEwMDY0NCBkcml2ZXJz
L25ldC9ldGhlcm5ldC9pbnRlbC9pY2UvaWNlX3B0eXBlX21rLmMNCj4gPiAgIGNyZWF0ZSBtb2Rl
IDEwMDY0NCBkcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9pY2UvaWNlX3B0eXBlX21rLmgNCj4g
PiAgIGNyZWF0ZSBtb2RlIDEwMDY0NCBkcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9pY2UvaWNl
X3RtYXRjaC5oDQo+ID4gICBjcmVhdGUgbW9kZSAxMDA2NDQgZHJpdmVycy9uZXQvZXRoZXJuZXQv
aW50ZWwvaWNlL2ljZV94bHRfa2IuYw0KPiA+ICAgY3JlYXRlIG1vZGUgMTAwNjQ0IGRyaXZlcnMv
bmV0L2V0aGVybmV0L2ludGVsL2ljZS9pY2VfeGx0X2tiLmgNCj4gPg0KPiA+DQo+ID4gX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18NCj4gPiBJbnRlbC13aXJl
ZC1sYW4gbWFpbGluZyBsaXN0DQo+ID4gSW50ZWwtd2lyZWQtbGFuQG9zdW9zbC5vcmcNCj4gPiBo
dHRwczovL2xpc3RzLm9zdW9zbC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC13aXJlZC1sYW4N
Cl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLXdp
cmVkLWxhbiBtYWlsaW5nIGxpc3QKSW50ZWwtd2lyZWQtbGFuQG9zdW9zbC5vcmcKaHR0cHM6Ly9s
aXN0cy5vc3Vvc2wub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtd2lyZWQtbGFuCg==
