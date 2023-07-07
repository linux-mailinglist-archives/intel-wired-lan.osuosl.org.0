Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id E295074AD74
	for <lists+intel-wired-lan@lfdr.de>; Fri,  7 Jul 2023 10:57:07 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 1A13482107;
	Fri,  7 Jul 2023 08:57:06 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 1A13482107
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1688720226;
	bh=LEfgY6VmBS0BHlQWCIxN3/0INSFOVJ0DaazSfiv06QQ=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=8RsQMlUFbStZUGwcZYoD0KVBWmgjxQ+qm8/bLRAt1OOc34ZTvTeU4vS92we0aH+Uw
	 snKrm6xCCXFsJR8PFFowOQRGBJOR/cEYuMXPqDFoV+3DRz35NSU7O3rlUWTWXIXNSE
	 vBP4tPNoZCxB9eEKE/bO83QMG7GohaYM0HzqB9VX1odfD8N5mS4Z4fuazEF+GxfJ3n
	 mYlnZ4UjrI03r63wpHYZKoy9pMmNnpW2lUYuDvxpBbTZ1NECrwW/qB0BV8BknwLYDC
	 PEL1pMiX5qWyBfE6lj3cRNrpZA/RgpjjYnakGN1EPtUCg+y11BPWObbJQlVZYwOMkX
	 NQWeYgqtPD1iQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id NKVcirZjm_c2; Fri,  7 Jul 2023 08:57:05 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id B00F181F72;
	Fri,  7 Jul 2023 08:57:04 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org B00F181F72
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id BDAFE1BF59E
 for <intel-wired-lan@lists.osuosl.org>; Fri,  7 Jul 2023 08:56:59 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 91E5060BDF
 for <intel-wired-lan@lists.osuosl.org>; Fri,  7 Jul 2023 08:56:59 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 91E5060BDF
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id xTg-4rLaLINM for <intel-wired-lan@lists.osuosl.org>;
 Fri,  7 Jul 2023 08:56:57 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 722BD60B98
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 722BD60B98
 for <intel-wired-lan@lists.osuosl.org>; Fri,  7 Jul 2023 08:56:57 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10763"; a="363879363"
X-IronPort-AV: E=Sophos;i="6.01,187,1684825200"; d="scan'208";a="363879363"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Jul 2023 01:56:56 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10763"; a="749495127"
X-IronPort-AV: E=Sophos;i="6.01,187,1684825200"; d="scan'208";a="749495127"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by orsmga008.jf.intel.com with ESMTP; 07 Jul 2023 01:56:56 -0700
Received: from fmsmsx602.amr.corp.intel.com (10.18.126.82) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27; Fri, 7 Jul 2023 01:56:55 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27 via Frontend Transport; Fri, 7 Jul 2023 01:56:55 -0700
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.108)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.27; Fri, 7 Jul 2023 01:56:55 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=bTA0zftBNqFg6vZc6K7ecQyqKd9QUOURmI/W/hiENppTTVlPx4/909tFsiyY1mcilKtuDi6HUPADbpNJ6iRKvAY0ueL05Wy/ZYrnmCcemQu4+GHRrb4PDFVv22dgx2nSqqBT3uC6NWfrMjvnXkLJC6xzjPGGwX83iR45Z8c9Zsl7Jao9hzkUQt6WIHjxJLiPhh3IDTaxdFfjmWIMw7GINPV8zNoKrsHOrjNOgkM7qf+BucCsliMZQE11U7Wlr+ZFboZR8FkG9a40A0EAw4rPseO+LmgiRvHyufWtjlfD8bM8TMIr/8FXXrCdQGY+sjKuVU0l3SUoEuHeyae+Fnd7Dw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=0CJRji5v+e+JCMFqFmLdyJwecilyn5rOJkVEtXrhHq8=;
 b=e7IL+UcCiVD3whaPE/QIlbZUTlDRMenDYC05KvtynJdBTg/ycyZnNbJIC1yBx50+ncEj2K8u/9cnhgk0KEldqY2wIxoKWcQWZUVICt7R6uPRmrINMIt9yO3jXOhoxyfnD0simdfCpgMD9ep6AMrfQhoikcyY4df8JWQXhG4V7n6BEoNL97nx16bC+wAJXOt9uFH1Pqlaze8cKsfMJ7SWflKstiBsLql4FcBEVuCrCTc/ufpcV+weq4dhwnFANRu5frLuA7zFIgqcoQZUKQTHBqD9IOeFlbX0gFbFcal0krRl3D4JmnWr5KzESeQnz1GTEzw9aoRJfblawG+VISxRjA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CH3PR11MB7764.namprd11.prod.outlook.com (2603:10b6:610:145::19)
 by SN7PR11MB8067.namprd11.prod.outlook.com (2603:10b6:806:2e8::15)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6565.17; Fri, 7 Jul
 2023 08:56:53 +0000
Received: from CH3PR11MB7764.namprd11.prod.outlook.com
 ([fe80::598b:daf6:cb86:6b37]) by CH3PR11MB7764.namprd11.prod.outlook.com
 ([fe80::598b:daf6:cb86:6b37%4]) with mapi id 15.20.6565.019; Fri, 7 Jul 2023
 08:56:52 +0000
From: "Zaborska, Olga" <olga.zaborska@intel.com>
To: "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH iwl-net v2] igbvf: Change IGBVF_MIN_TXD
 and IGBVF_MIN_RXD to allow change of rx/tx value between 64 and
 80
Thread-Index: AQHZr3FwTschFuM3nUO+cNUkpHeHA6+uAZxA
Date: Fri, 7 Jul 2023 08:56:51 +0000
Message-ID: <CH3PR11MB7764A508C2F4BE21488AB7DEF92DA@CH3PR11MB7764.namprd11.prod.outlook.com>
References: <20230703103230.89884-1-olga.zaborska@intel.com>
 <2577d3da-d1c7-02c2-b9f9-5d4f62add0ef@intel.com>
In-Reply-To: <2577d3da-d1c7-02c2-b9f9-5d4f62add0ef@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: CH3PR11MB7764:EE_|SN7PR11MB8067:EE_
x-ms-office365-filtering-correlation-id: a0c44de1-9b89-4831-4a83-08db7ec81b4b
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: Eg+UrKocBmlMs8dwE7UeO5S7MvzV3v4BKvH2DVTktQy4qG8tcMC25Ms3N1qVQ1Ttd2u2nbD2CRPmWsdQTNqx8V/ye/wwM/O55YNPcE+18vetzd6KYrfqcFLjRCahzDdLGnFaLXOY7d8lt5h5L5V9G+Y+7IF064v9EDb4mfmkQn4CX/DOdkKs5n9MK4NMiQy4FihS8DIZjBYfya8LLpSnzcBNstvDhILvqJdOhwHeE6YLn3qo5acwUN4SZFJE1woW2CZqL+1C5aLimH2CwVY0JJGjaC4NvbI07qEA6v8ijO8wMHvCO6nlBaD97KuTGiyeGIsxBZAmDKQUj9rVG8ELJ1S3BiNnpJOz1JWfU/G0CxEMtuPFxK7S9iR4SFm27xJcoh5RpUJEMBH2kXppfAJzLaBMbnwzbmQtKoCK1/Q4wyNl/6DOF37sgg6wEAb/9RZVEFGM6TH2mhwFsUCPibkzbm4rDrV5CnTILaeyaD2sHLncXhipJbFe8D42/DAOxDYWBjEX4BXd8Y8Ju7FV/wt4rYIee1a65obol4ADUqnbxROiQil2QWXlqbsUjq3ItcQIB+8t3K1feZubj4xiUhOAUXw2xESPMEzJ5D8W/kuPuvdiFG1bn4cS+vJtDRMR7N4M+OKHROp021xeGVtaMHkhIw==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CH3PR11MB7764.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(396003)(136003)(39860400002)(366004)(376002)(346002)(451199021)(8936002)(52536014)(8676002)(110136005)(41300700001)(7696005)(55016003)(316002)(71200400001)(5660300002)(2906002)(66476007)(66946007)(66446008)(76116006)(66556008)(64756008)(478600001)(83380400001)(38100700002)(966005)(33656002)(82960400001)(86362001)(186003)(38070700005)(122000001)(26005)(6506007)(53546011)(9686003);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?Ly9qYWNtOTdNdmRuazJTMU5JY2h5Yjk3Qlh2YmxHdnpRaXduNmVHS3ZxOWJZ?=
 =?utf-8?B?M0tKYU1zWGIwMlNHblhYM1RVRXppTlYyR29mRkp3dFVTa3dRZ3VVUDFBMWdH?=
 =?utf-8?B?bklCTHRrWkVveTFnNkQwdE9FM2xkcmNDNzQ5dzJHbW1sVUNITUZjRENQd2tM?=
 =?utf-8?B?cVVmU2RRSHJ0UWpvTWlBb2xJYVN3WHU5VFE1YkJYenJZbU40RnJyUUwzY3hl?=
 =?utf-8?B?cE1QOXVOT1ZvbDN2SnpkQ1l2Y09VMjRXRWN4OEVmQTNneXBsaXlpdTVvRzJE?=
 =?utf-8?B?UWszQXVkYkt0OHN2RGNUU1Vyd3lnc0lRN2NFS0F6dkNKWGZjdXgrbFV2Zkh5?=
 =?utf-8?B?NGpxNXNHSkRtbUwwa3lnajlVVXdIaEtZa0JFUUt5aWFDaDFXcTdXdE5BTU5I?=
 =?utf-8?B?bm5NWitSNW9STWYrSjBRL1N3ZTdKUGNiV3pPSjlLY2ZBd1BWelY4WER1aWxx?=
 =?utf-8?B?WmsyT3habTFWbDdlVWlXSkNkNXRSUkNBWDF1YXZDRE52bkVXbG5MRmpVc3JV?=
 =?utf-8?B?eVJaQ1RYeEh4aXd1L3ZqZWFxRjBZeFYzajArSENiakdLcGRDRk9YdFo0cmhT?=
 =?utf-8?B?VXkzS1RXaXVZMnJlME9oMGE1VGJFS1hjbytiQk1GVEhXRXlScWh6WUZPRVVk?=
 =?utf-8?B?aWIvN3FjR1lJSkpPR0RMS2l4RG41NmI3T05NYWUzNFVUb2ZKNEpWODNDbTl2?=
 =?utf-8?B?ZVpsZEx2ei9qUWxDd1BzUXBuNm9ITDBpVjd6amg5OG5GVGpSdzV5S0djcHIz?=
 =?utf-8?B?RmtDZDFoVHlzMW15MmdURFlGdEpJU0Y2bDlhZUFFaEJoMFFsZVVjVTVCUzFY?=
 =?utf-8?B?cHo2RlF1UUV3ZFcyR3lQQWJjODB4dDZnYkM4aTdvVzBoV3V3d3dMd0N1U2Mv?=
 =?utf-8?B?UkJoQTd6VFgxOGwrWVBuS3RQN3A0eHBKYTkrazRYclk2VWFWeU8vbnBHNHhG?=
 =?utf-8?B?Y3c3Z2pva2JKbGR1cTJOQUdiL1J4bmZxUzJyZUl1S0Z6TEZFRmgwZCtmcS9v?=
 =?utf-8?B?SWNUQXBwYktPRStzYUh2MkxZVlYzaGI2YTdpM24zZ0poby9NeXRFNnJ3UkdM?=
 =?utf-8?B?UkY1bmJtMmFOZGkvMmZQUGNyZzdRYzRlSStMLzkyZVphWlZuNmphTnF6ZkVN?=
 =?utf-8?B?TmgvOU84R2R4cTRpcDZzQlB0L1J5c1dDbFNERTRibVA0RDh2NVJPL0UxT2Vh?=
 =?utf-8?B?SDFCY0UzQ29EWkVmczVnWjVhZmxBcUpjekplcE5xN1czeTcwRFh6VENSMmZ5?=
 =?utf-8?B?WWxaK0VadWV1bnljU0VmdnhwZDFkMEsvRzllTXJUSUJkTW9wVkRaUzVDcThC?=
 =?utf-8?B?cjFYeVcyNFY1VVZGZ1dZeGlldXRtZWdONFQvcjdydldtcmI4ZjJMbmZ3VlRl?=
 =?utf-8?B?Qk9PbjVIekRYS1JTZUNrbUxkVTFjQ2tOaVg3SjFzOXUwK014bWpzRkF3LzlX?=
 =?utf-8?B?Q1I3K1k3amlPYWJtRE9VWERMdVo3a04zVU4xaGpycnc2dURqMHlLY05tZUhh?=
 =?utf-8?B?dnBTeENkUzdVK2JrY1pPOHdjOXVWaDAwQUQ4NWNrUHJKOVExTlI5K0dNSEcy?=
 =?utf-8?B?aGtCYkNTVmNlYUpEbDlUejIvREI2T3h1N1d5RjZ4REZBc21BbExHVVFEMUV4?=
 =?utf-8?B?dnJqc3NWSkcyVFFuNHVMdTlabUFLLy85Y0UrelNvNVRBS1ZwMGZqYVU2TUdG?=
 =?utf-8?B?SUxjdVAyUnhBSnc4OXlCR1Y2eU50eUg5L205SlZudXZVOUlCb1IzLzh2WEQz?=
 =?utf-8?B?OWpxSzZ2ZHQ1UjBZUFMvUVpZUE8xV1FsQkxERjZhbmQvOURsek5KNFlQMDVZ?=
 =?utf-8?B?QlFzZkNQcmd0cEEyanNOUTl6ZEp5dEpzSm1ZYUVMSHA5SjQxQWtuU1R4OG5J?=
 =?utf-8?B?elh2amtNR2FKNXBqZU14b2ZqSFFKSW4rVkNYYXB0RDczQWlUTlo2U0taMVVv?=
 =?utf-8?B?ZkFUQm1LN0kxRnEvNmdvbFdZaVZlaWdBd1YyV2x6ZEo3SDdDbG5HSW1sRGZp?=
 =?utf-8?B?NCtsR1NhYyttNDNWWXBSWXplMXAyLzkxcUFUOWMzN1puMnpveG90dXlaTStO?=
 =?utf-8?B?UThyUU1uMWgzZlBLT2FPWVpJbEJRYjIwaElCNjNwbEtxSlc5Uy9YWGpMNml5?=
 =?utf-8?Q?LYjPiWWKPHzWpdWHgRRtlbsmO?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CH3PR11MB7764.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: a0c44de1-9b89-4831-4a83-08db7ec81b4b
X-MS-Exchange-CrossTenant-originalarrivaltime: 07 Jul 2023 08:56:51.9177 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: l9o8M4P0o3ym4R764ygH9r69AyIWlfPblDsTvodeCRwrmiakq54vEHthalJDZdMCjm6AxyWW2jAlbNF0r65e1g==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN7PR11MB8067
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1688720217; x=1720256217;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=0CJRji5v+e+JCMFqFmLdyJwecilyn5rOJkVEtXrhHq8=;
 b=DZy3dWIQj9gHbETvNRlhs2dcBPw54Zl8t3BxH9f7Myp3GIVmg4ovBiP6
 E9KfsI7t5Wa2RYUunaK+fJkOKOWIInTiiRvJGZW/Nzpdi5NcOURFMVAjX
 PBgTgirOVmGTD/kYEmeCLb6WNoFdD6hfYGAZaJn9o2pwDYxvgfg7GGn7U
 CCQrgFsIfToEDv4QY16z9GAFQ5qDe5ll2CfXYJIX442IwhnLOMGJopCoo
 VvgIZ8+4VLBZPVDV8m7M9k82UDRZrJ6zA83CNZ94U5kzIsfJJjET6LnYf
 rpMINZ6xpMjGMUFg0trX6Jrt51z3PcbqhDLoBdIf8RvUg+ajK4KN/UGq/
 Q==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=DZy3dWIQ
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-net v2] igbvf: Change
 IGBVF_MIN_TXD and IGBVF_MIN_RXD to allow change of rx/tx value between 64
 and 80
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

PiAtLS0tLU9yaWdpbmFsIE1lc3NhZ2UtLS0tLQ0KPiBGcm9tOiBOZ3V5ZW4sIEFudGhvbnkgTCA8
YW50aG9ueS5sLm5ndXllbkBpbnRlbC5jb20+IA0KPiBTZW50OiDFm3JvZGEsIDUgbGlwY2EgMjAy
MyAyMDo0OQ0KPiBUbzogWmFib3Jza2EsIE9sZ2EgPG9sZ2EuemFib3Jza2FAaW50ZWwuY29tPjsg
aW50ZWwtd2lyZWQtbGFuQGxpc3RzLm9zdW9zbC5vcmcNCj4gU3ViamVjdDogUmU6IFtJbnRlbC13
aXJlZC1sYW5dIFtQQVRDSCBpd2wtbmV0IHYyXSBpZ2J2ZjogQ2hhbmdlIElHQlZGX01JTl9UWEQg
YW5kIElHQlZGX01JTl9SWEQgdG8gYWxsb3cgY2hhbmdlIG9mIHJ4L3R4IHZhbHVlIGJldHdlZW4g
NjQgYW5kIDgwDQo+IA0KPiBPbiA3LzMvMjAyMyAzOjMyIEFNLCBaYWJvcnNrYSwgT2xnYSB3cm90
ZToNCj4gDQo+IFRoaXMgdGl0bGUgaXMgYSBiaXQgbG9uZywgaXQgY291bGQgcHJvYmFibHkgYmUg
cmV3b3JkZWQgdG8gYmUgc2hvcnRlciBhbmQgc3RpbGwgY29udmV5IHRoZSBzYW1lIG1lc3NhZ2Uu
IFVub2ZmaWNpYWxseSwgeW91IHNob3VsZCBiZSBzaG9vdGluZyBmb3IgNTAgY2hhcnMgb3IgbGVz
cy4NCg0KSXQgd2lsbCBiZSBzaG9ydGVuZWQgaW4gdjMuDQoNCj4gDQo+ID4gRnJvbTogT2xnYSBa
YWJvcnNrYSA8b2xnYS56YWJvcnNrYUBpbnRlbC5jb20+DQo+ID4gDQo+ID4gVGhlcmUgaXMgY3Vy
cmVudGx5IGEgYnVnIHdoZXJlIHdoZW4gc2V0dGluZyB0aGUgcngvdHggdmFsdWUgYmV0d2VlbiA2
NCANCj4gPiBhbmQgODAgaXQgYXV0b21hdGljYWxseSBzZXRzIHRvIDgwLCB0aGlzIHdpbGwgYmUg
Zml4ZWQgYnkgY2hhbmdpbmcgSUdCVkZfTUlOX1RYRCBhbmQgSUdCVkZfTUlOX1JYRC4NCj4gPiBC
YXNlZCBvbiBjb21taXQ6DQo+ID4gTGluazogaHR0cHM6Ly9zb3VyY2Vmb3JnZS5uZXQvcC9lMTAw
MC9tYWlsbWFuL21lc3NhZ2UvMTkxOTQxNjAvDQo+IA0KPiBBIGtlcm5lbCBjb21taXQgcmVmZXJl
bmNlIHdvdWxkIGJlIHByZWZlcnJlZCBvdmVyIGEgbGluay4NCj4NCg0KVGhpcyB3aWxsIGJlIGZp
eGVkIGluIHYzLg0KIA0KPiA+IEFsbCBlMTAwMCBkZXZpY2VzIGNhbiB1c2UgYXMgbG93IGFzIDY0
IGRlc2NyaXB0b3JzLiANCj4gDQo+IEhvdyBkb2VzIHRoaXMgYXBwbHkgdG8gaWdidmYgdGhvdWdo
PyBJJ20gYXNzdW1pbmcgY2FycnkgZm9yd2FyZCBvZiBwcmV2aW91cyBkcml2ZXIgY29kZT8NCj4N
Cg0KWWVzLCBpdCdzIGNhcnJ5IGZvcndhcmQgb2YgcHJldmlvdXMgZHJpdmVyIGNvZGUuIA0KDQo+
ID4gVGhpcyBjaGFuZ2Ugd2lsbCB1bmlmeSBpZ2J2ZiB3aXRoIG90aGVyIGRyaXZlcnMuDQo+IA0K
PiBJcyBpdCB1bmlmaWVkIGlmIG5vdCBhbGwgZHJpdmVycyBhcmUgNjQgWzFdWzJdPw0KPg0KDQpJ
IHBsYW4gdG8gY2hhbmdlIGljZSBhbmQgaWdiIGFzIHdlbGwsIHNob3VsZCBpdCBiZSBkb25lIGlu
IG9uZSBwYXRjaCBvciBzZXJpZXMgb2YgcGF0Y2hlcz8NCg0KPiA+IEZpeGVzOiBkNGUwZmUwMWEz
OGEgKCJpZ2J2ZjogYWRkIG5ldyBkcml2ZXIgdG8gc3VwcG9ydCA4MjU3NiB2aXJ0dWFsIA0KPiA+
IGZ1bmN0aW9ucyIpDQo+IA0KPiBXaGF0IGlzIHRoZSBidWcgb3IgYXJlIHlvdSBhbGxvd2luZyBt
b3JlIHZhbHVlcyAod2hpY2ggSU1PIGlzIG5vdCBhIGJ1Zyk/DQo+DQoNCkl0IHdhcyByZXBvcnRl
ZCBieSB2YWxpZGF0aW9uIHRlYW0gYXMgYSBidWcgdG8gbm90IGJlaW5nIGFibGUgdG8gc2V0IHRo
ZSB2YWx1ZSB0byA2NC4NCg0KPiA+IFNpZ25lZC1vZmYtYnk6IE9sZ2EgWmFib3Jza2EgPG9sZ2Eu
emFib3Jza2FAaW50ZWwuY29tPg0KPiA+IHYxLT52MiBmaXhlZCBjb21taXQgdGl0bGUgYW5kIG1l
c3NhZ2UNCj4gDQo+IFRoaXMgYmVsb25ncyB1bmRlciB0aGUgJy0tLScNCj4NCg0KVGhpcyB3aWxs
IGJlIGZpeGVkIGluIHYzLg0KDQo+ID4gLS0tDQo+ID4gICBkcml2ZXJzL25ldC9ldGhlcm5ldC9p
bnRlbC9pZ2J2Zi9pZ2J2Zi5oIHwgNCArKy0tDQo+ID4gICAxIGZpbGUgY2hhbmdlZCwgMiBpbnNl
cnRpb25zKCspLCAyIGRlbGV0aW9ucygtKQ0KPiANCj4gWzFdDQo+IGh0dHBzOi8vZWxpeGlyLmJv
b3RsaW4uY29tL2xpbnV4L3Y2LjQvc291cmNlL2RyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2ln
Yi9pZ2IuaCNMMzcNCj4gWzJdDQo+IGh0dHBzOi8vZWxpeGlyLmJvb3RsaW4uY29tL2xpbnV4L3Y2
LjQvc291cmNlL2RyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2lnYy9pZ2MuaCNMMzI5DQo+DQoN
Ci0tLS0tT3JpZ2luYWwgTWVzc2FnZS0tLS0tDQpGcm9tOiBOZ3V5ZW4sIEFudGhvbnkgTCA8YW50
aG9ueS5sLm5ndXllbkBpbnRlbC5jb20+IA0KU2VudDogxZtyb2RhLCA1IGxpcGNhIDIwMjMgMjA6
NDkNClRvOiBaYWJvcnNrYSwgT2xnYSA8b2xnYS56YWJvcnNrYUBpbnRlbC5jb20+OyBpbnRlbC13
aXJlZC1sYW5AbGlzdHMub3N1b3NsLm9yZw0KU3ViamVjdDogUmU6IFtJbnRlbC13aXJlZC1sYW5d
IFtQQVRDSCBpd2wtbmV0IHYyXSBpZ2J2ZjogQ2hhbmdlIElHQlZGX01JTl9UWEQgYW5kIElHQlZG
X01JTl9SWEQgdG8gYWxsb3cgY2hhbmdlIG9mIHJ4L3R4IHZhbHVlIGJldHdlZW4gNjQgYW5kIDgw
DQoNCk9uIDcvMy8yMDIzIDM6MzIgQU0sIFphYm9yc2thLCBPbGdhIHdyb3RlOg0KDQpUaGlzIHRp
dGxlIGlzIGEgYml0IGxvbmcsIGl0IGNvdWxkIHByb2JhYmx5IGJlIHJld29yZGVkIHRvIGJlIHNo
b3J0ZXIgYW5kIHN0aWxsIGNvbnZleSB0aGUgc2FtZSBtZXNzYWdlLiBVbm9mZmljaWFsbHksIHlv
dSBzaG91bGQgYmUgc2hvb3RpbmcgZm9yIDUwIGNoYXJzIG9yIGxlc3MuDQoNCj4gRnJvbTogT2xn
YSBaYWJvcnNrYSA8b2xnYS56YWJvcnNrYUBpbnRlbC5jb20+DQo+IA0KPiBUaGVyZSBpcyBjdXJy
ZW50bHkgYSBidWcgd2hlcmUgd2hlbiBzZXR0aW5nIHRoZSByeC90eCB2YWx1ZSBiZXR3ZWVuIDY0
IA0KPiBhbmQgODAgaXQgYXV0b21hdGljYWxseSBzZXRzIHRvIDgwLCB0aGlzIHdpbGwgYmUgZml4
ZWQgYnkgY2hhbmdpbmcgSUdCVkZfTUlOX1RYRCBhbmQgSUdCVkZfTUlOX1JYRC4NCj4gQmFzZWQg
b24gY29tbWl0Og0KPiBMaW5rOiBodHRwczovL3NvdXJjZWZvcmdlLm5ldC9wL2UxMDAwL21haWxt
YW4vbWVzc2FnZS8xOTE5NDE2MC8NCg0KQSBrZXJuZWwgY29tbWl0IHJlZmVyZW5jZSB3b3VsZCBi
ZSBwcmVmZXJyZWQgb3ZlciBhIGxpbmsuDQoNCj4gQWxsIGUxMDAwIGRldmljZXMgY2FuIHVzZSBh
cyBsb3cgYXMgNjQgZGVzY3JpcHRvcnMuIA0KDQpIb3cgZG9lcyB0aGlzIGFwcGx5IHRvIGlnYnZm
IHRob3VnaD8gSSdtIGFzc3VtaW5nIGNhcnJ5IGZvcndhcmQgb2YgcHJldmlvdXMgZHJpdmVyIGNv
ZGU/DQoNCj4gVGhpcyBjaGFuZ2Ugd2lsbCB1bmlmeSBpZ2J2ZiB3aXRoIG90aGVyIGRyaXZlcnMu
DQoNCklzIGl0IHVuaWZpZWQgaWYgbm90IGFsbCBkcml2ZXJzIGFyZSA2NCBbMV1bMl0/DQoNCj4g
Rml4ZXM6IGQ0ZTBmZTAxYTM4YSAoImlnYnZmOiBhZGQgbmV3IGRyaXZlciB0byBzdXBwb3J0IDgy
NTc2IHZpcnR1YWwgDQo+IGZ1bmN0aW9ucyIpDQoNCldoYXQgaXMgdGhlIGJ1ZyBvciBhcmUgeW91
IGFsbG93aW5nIG1vcmUgdmFsdWVzICh3aGljaCBJTU8gaXMgbm90IGEgYnVnKT8NCg0KPiBTaWdu
ZWQtb2ZmLWJ5OiBPbGdhIFphYm9yc2thIDxvbGdhLnphYm9yc2thQGludGVsLmNvbT4NCj4gdjEt
PnYyIGZpeGVkIGNvbW1pdCB0aXRsZSBhbmQgbWVzc2FnZQ0KDQpUaGlzIGJlbG9uZ3MgdW5kZXIg
dGhlICctLS0nDQoNCj4gLS0tDQo+ICAgZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvaWdidmYv
aWdidmYuaCB8IDQgKystLQ0KPiAgIDEgZmlsZSBjaGFuZ2VkLCAyIGluc2VydGlvbnMoKyksIDIg
ZGVsZXRpb25zKC0pDQoNClsxXQ0KaHR0cHM6Ly9lbGl4aXIuYm9vdGxpbi5jb20vbGludXgvdjYu
NC9zb3VyY2UvZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvaWdiL2lnYi5oI0wzNw0KWzJdDQpo
dHRwczovL2VsaXhpci5ib290bGluLmNvbS9saW51eC92Ni40L3NvdXJjZS9kcml2ZXJzL25ldC9l
dGhlcm5ldC9pbnRlbC9pZ2MvaWdjLmgjTDMyOQ0KX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX18KSW50ZWwtd2lyZWQtbGFuIG1haWxpbmcgbGlzdApJbnRlbC13
aXJlZC1sYW5Ab3N1b3NsLm9yZwpodHRwczovL2xpc3RzLm9zdW9zbC5vcmcvbWFpbG1hbi9saXN0
aW5mby9pbnRlbC13aXJlZC1sYW4K
