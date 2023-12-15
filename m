Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 28157814471
	for <lists+intel-wired-lan@lfdr.de>; Fri, 15 Dec 2023 10:29:57 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id A2A4E41E50;
	Fri, 15 Dec 2023 09:29:55 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org A2A4E41E50
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1702632595;
	bh=3VE8aBkKiBSmZKSf3TNa+1nH8rQBll+8mG50Dc40Whc=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=7FfOe+OKHMtixCQVnLrmrhutZnDZQIY4VC4gzlub3xBjjH0HoWf6PBut02sUAq3U8
	 GzxstMKHR2ULJiOH2T9EmEP5fjPL4t63URVJWKg+RfzToJBNPzztVEBF5tchczuAfO
	 6d6SVcrpK4PqRXq80o2f7S3761O6i37t57xpkid3OxRyCKLaEJb0e8yOmerX2zth/n
	 QXW3IBj6aE7QBF/os/YiM7r5Mp4e0i+Qf5TOO9W/4GGuEKrYQ6IC9f+JKmxWBGgJO7
	 i/LF0FWVwl2a80MgQDJmx2hLfuDcJZxSDH2dtWqcZw3TKGGyoGlpu4zFm1+ekbNztl
	 VtN2f4IigrU2Q==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id j3K9F65QvMaM; Fri, 15 Dec 2023 09:29:54 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 48BB141E46;
	Fri, 15 Dec 2023 09:29:54 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 48BB141E46
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id C55DA1BF405
 for <intel-wired-lan@lists.osuosl.org>; Fri, 15 Dec 2023 09:29:49 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 98E4440131
 for <intel-wired-lan@lists.osuosl.org>; Fri, 15 Dec 2023 09:29:49 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 98E4440131
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id eE7eIRRgiL-K for <intel-wired-lan@lists.osuosl.org>;
 Fri, 15 Dec 2023 09:29:48 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.11])
 by smtp2.osuosl.org (Postfix) with ESMTPS id F347C40127
 for <intel-wired-lan@lists.osuosl.org>; Fri, 15 Dec 2023 09:29:47 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org F347C40127
X-IronPort-AV: E=McAfee;i="6600,9927,10924"; a="2094427"
X-IronPort-AV: E=Sophos;i="6.04,278,1695711600"; 
   d="scan'208";a="2094427"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orvoesa103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Dec 2023 01:29:42 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10924"; a="947908238"
X-IronPort-AV: E=Sophos;i="6.04,278,1695711600"; d="scan'208";a="947908238"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by orsmga005.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 15 Dec 2023 01:29:42 -0800
Received: from fmsmsx601.amr.corp.intel.com (10.18.126.81) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Fri, 15 Dec 2023 01:29:41 -0800
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Fri, 15 Dec 2023 01:29:41 -0800
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.100)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Fri, 15 Dec 2023 01:29:41 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=KK+Kk9haCklnuf2P1sotEcJl3dFbhahYwKMscR3U8PhgNO90egGDtXnrFdXvltAJ3rkuJopBECNzpWPff6TQx1p4QIXc0XCmUPyyWghFdk23JQR6powsHqfxkmUZtLoBawTOQtdlfRTYkiVF1zAzAlGtzAD1oY2ol9yomjdcvEHrQ1SMig9j3M+jyBqDaZi54Jx9Lv/yV+SQGNwjSGP+/YFe7MlhtVC9YFleuMxo7YDMoatSWQf1A+PHoEk6bgDxjry7gEaUZAWitji2HhoDGfkpcYVYvws70VzOXr/pAZbDdlTj2jPg1rS975V/ZlP5AeRBJz1AC2KqQXpIHTouPg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=cq+5ZveLSOEmW8JmWPkX9HEEUB+h6HBIEu9rcR5pEf4=;
 b=oEvB1UKDs1OwzFAAyP9YWLzaNVi8/8q+eMN+DOjM4mqjq9ptQk+ue1e4ttxZmYzPRht//YJ9xa6A32zEUZfa89DEhFYA7MlFXy78lsJrl1X8rIKEwEGlkr2GhH+mk7pI3gZkxFnTZYlL47kwX90sy3HZfGuRMvN2Lzw1qEnTVKe8GahYEb6yJ1f/kxyF07mjyJNq6v75dPXnHhVoD+Ov3I8a9DQfoZrW0iMNKDxTs/2AFYdFg+R2yvMxc3q58rlBOU1KyWrVzzM0aRX7SG1jEqng99ny7UGFAypAauj9pxDBKxjEcitQltzJtYxyW58l27X/p5mnbEwTeCjmAzJgPg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM6PR11MB4657.namprd11.prod.outlook.com (2603:10b6:5:2a6::7) by
 PH7PR11MB7514.namprd11.prod.outlook.com (2603:10b6:510:276::16) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7091.28; Fri, 15 Dec
 2023 09:29:39 +0000
Received: from DM6PR11MB4657.namprd11.prod.outlook.com
 ([fe80::89c2:9523:99e2:176a]) by DM6PR11MB4657.namprd11.prod.outlook.com
 ([fe80::89c2:9523:99e2:176a%6]) with mapi id 15.20.7091.030; Fri, 15 Dec 2023
 09:29:39 +0000
From: "Kubalewski, Arkadiusz" <arkadiusz.kubalewski@intel.com>
To: Paul Menzel <pmenzel@molgen.mpg.de>
Thread-Topic: [Intel-wired-lan] [PATCH iwl-net] ice: dpll: fix phase offset
 value
Thread-Index: AQHaLmsTUiT4gxQXcESqJsm6sEcQ3rCog6OAgAGPoYA=
Date: Fri, 15 Dec 2023 09:29:39 +0000
Message-ID: <DM6PR11MB46570D50E2992F8E0A7469B69B93A@DM6PR11MB4657.namprd11.prod.outlook.com>
References: <20231214085050.3161674-1-arkadiusz.kubalewski@intel.com>
 <736b40ab-8f9c-464c-9ef1-225f54220390@molgen.mpg.de>
In-Reply-To: <736b40ab-8f9c-464c-9ef1-225f54220390@molgen.mpg.de>
Accept-Language: pl-PL, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM6PR11MB4657:EE_|PH7PR11MB7514:EE_
x-ms-office365-filtering-correlation-id: fe9d3eb0-b708-4d0c-ca78-08dbfd505c64
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: qQtZyGYVtBSpXYzD+aNn6xzMVOpJOTIGMUFnF3/bAlG9pGppWERUTK65N77RMjkGh77Mq6+v8K+oTPzvfLCM8QIy2A1z1OKDQ6ghyYhJAp9kZdTmeKi3utWu7pSiWjkvmH2gNICQD9PdTMXwHH+w6HuHsY8Fc6p5m/8j0a6imnsUdMQl5OXI6GOayTndnQWQgsuBv4RTvRzel1yVPHGOcj4gl9onT6ECL2fVGp0YUHu2rTEzPFsEeTp9+7VrwkjJ7bS7Zrzofiwjp+D/fVC71SoqvZ4VvR+BchbRReC5gwzWI54qlQmGN9SnHgUpyOVbkci0Ugg+iZoP66KWGOfdV8Gb2iPwzcbjhyqxrTvJ1NmTIswv69t5g2nnmUEEyCmR+8tDV0RtDqa2fKVSlsVLxVPxrHj7M4oB4BVeonHHA0ZpVyuuJNhw8No8o2tJd/ziV83EPTh3Ar2PqQOmcBmsZlABtFvnuI6jdof6qS8A1w3gr/NvR/wPuitLdPRgfn91Svq2Nzw7iapTnf9YkY20KM6y+Z0c100tXSudCbUXj1FJXUZw3pYfi3FlnypiwxK1iv/PTbI0GT5KZ99V3xXHyldnH+pkmLuAShScikqu5U4=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM6PR11MB4657.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(136003)(39860400002)(346002)(396003)(376002)(366004)(230922051799003)(186009)(451199024)(64100799003)(1800799012)(55016003)(26005)(6506007)(7696005)(33656002)(82960400001)(71200400001)(38070700009)(86362001)(122000001)(38100700002)(9686003)(5660300002)(83380400001)(52536014)(4326008)(76116006)(316002)(66946007)(6916009)(8676002)(8936002)(66556008)(66476007)(66446008)(64756008)(54906003)(41300700001)(2906002)(478600001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?cklHUDVCeUlLbGxxSUovK1FTNU54bCtDdGcvQ2xJanQ0WUZQOHJRenZQdWhI?=
 =?utf-8?B?cDZvdU90TUR0QzlYZG1NbDN5SVpnd1QwZDdpTTBmcTBRTS80RGVvUGM3S09X?=
 =?utf-8?B?bVlzNk4zNDRvc1RuMkczaEJRcE8zY1VCaHRUZUpXbUk5UU1XUTJoUW56VEFx?=
 =?utf-8?B?Nmk3QksyQytFTU9YbGQ5T3JFeVRwVjQ3aWF1dE5XNXdDL0RQWVJGREtmQ0xq?=
 =?utf-8?B?U2dYUXU5S2NjMFZmU3ZaTEZHM2c2RmtPQlkza2E4a1lKMVpsYWJZdnB5Ui9X?=
 =?utf-8?B?RTVlQ0xrc3UvMytyY204MWVleWhiTnNHTkcrTkhjV0k0T3Y4elhoeHlKVHNP?=
 =?utf-8?B?R1NMZkYzNHJiUFRaOHFZVnBWNDZER2E4aE9NR21jdlROcHcrcDVBMnlyRkts?=
 =?utf-8?B?NVBXdHpOWHgxRzlHYzBNOHg1ZzNXdnVyMSt6clUvNVZvVmw0aFpESnJ2eUoy?=
 =?utf-8?B?T1Z1bFdjdnZuUHJSTmkzS2N4VHM5SDJ2bDU3UUU4ZUsrbWI4Nlc1WUtxd0d0?=
 =?utf-8?B?RHB6cFFxamNMWnZDQUQ2WklpZW5tM0VqQ1EvL0swTXZ2eGxkWGVMQ0VONGlU?=
 =?utf-8?B?WkVZNElLb0FOMy9BalRkOUx1UFg4YjNuYmc5Z3ZIOUtXRTZpdGovUjg2d2xX?=
 =?utf-8?B?NlFXbC9ZMEcyeTNqY1J1SFBLcXNzd1ZlS0RPb0t0Z0RYUlo0Nm9lcnozbnFr?=
 =?utf-8?B?TW1ZbmdYQmVjMzEwZFRyclA1ZWRjWHY3Z3k5c0swbklIYWVKVks4elZCeVlp?=
 =?utf-8?B?V3BwemY3MzZQelhrVlFsWVlMVEJscnJ0a2xMU0QvcGtNQWFSKzF4ZWQ1YUh1?=
 =?utf-8?B?a3p4VlN0TTJyVjdOQW91TVRsZk1NVkpMOHJoc041SE43N3krQ3Eya0pxMytw?=
 =?utf-8?B?cFVON0ZjN1JMNEdHb3pPSWFDTC9sY2Q4U2cwYVZha25lTDB1QXI3R2xEWUEr?=
 =?utf-8?B?ODU3cXhEWXBrYjlpSTdkY0t1em1OVThZNmxrR05BTG5RTGtkN3NZTjNaOWRv?=
 =?utf-8?B?UjdrWVJMY0o3UitscmZsY0JOL3NEM1I3V2lRSUo2V2xSK254RnFRbTRCVzho?=
 =?utf-8?B?amJMNWpkOEFNR1RmOE1Nall6cG1CcjlDQURYdXJhZVo5NUUwN3A2NXBxNVhu?=
 =?utf-8?B?TXBrSG82bEtiWURiN1BycGJnK2tVMW4yOVVMM2VmanFCR0hpUWJlNWdTc0wv?=
 =?utf-8?B?RS9NY29CYkpGQVVsM2t4R0w4M3VtZWxCemlQcGVNRDRPL0UvbC9nQm5KUXF4?=
 =?utf-8?B?aXNrUGE4ZVRpdFFtVWwwWjhyak04TjdtV01LdS9yQm84blY3ak9OTmMxeVBQ?=
 =?utf-8?B?VVB0MkZwUElHbWR2Y3QwYXBsTTJMR3ViWWgwOXJadFdKRENaRDFQcExScDhs?=
 =?utf-8?B?QjVMYXNURTJGZkViRDI2SnRlcXpxZlNJdmZ0S3E5andwaU5hOXRQbWllMHZ1?=
 =?utf-8?B?SjhyRndDV0JWN2xFbm56aWxkYXRIcU40cGErUVM3SkpzNmg2cGFBRW5Qd0l6?=
 =?utf-8?B?T2dib2N4Wk5BWVY4L2loVEJOOW55SVRrdm4xbjNjRWlHU0VERGFJeHRBQVZS?=
 =?utf-8?B?K1JmbDlQZGRlU1kwTVUvU0xKd3NRTWw3eWh4VUorSzdGd21CRHRkWXpYMEcw?=
 =?utf-8?B?VmhmKzZ5bm9pVlN6WklMcUNkS1ljQ09oWUlBV2tPTHdSVWNqNXdhcm5JbVVj?=
 =?utf-8?B?aWRCdkdCbTJuY3p6Nml0dS8xS2tqYkhjWnVIcDNGb0NNNTJaZE1YUE5MUi9V?=
 =?utf-8?B?dGtPWlM0OGRUc0lRTEVTTE1wQUYrOUtKTlM3b3dpRGZ5V2x2c3JQc0QvSitz?=
 =?utf-8?B?UGIrMFRQYUJjeFF4OXo0QnRnQTQzWVBuSTE2aU14cnRYN1NUQTY5c2V2dnpQ?=
 =?utf-8?B?Vit0VmxwaTEzMXVOK2Z6NVBoQkpmbDhwbW44VU9Mb3VTdjJiY2xJQ0MxcDlT?=
 =?utf-8?B?UUl5aWh5dHFORTlhdXhraDkzVGpHTlN5dUZFWXdPNXZpM1dHZmRPcVVGQkZh?=
 =?utf-8?B?QVBOQ2R5OXRnWEd4ektXMm9NTmg0MUdLSGJFT1BiUE9sK2NROFV4NWdqdkVa?=
 =?utf-8?B?Tkd2VUdBMGtmMmxRT3VDcnhGcEdMdTlabnRSMWlFZ09RK1FkY2tIdHN1anNw?=
 =?utf-8?B?RFZaUEI5WGdpMm1iTGxtUzQxQjZqdnBJbVZKa3N3M0kvUlJIaCs0OEVWNjJa?=
 =?utf-8?B?M1E9PQ==?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM6PR11MB4657.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: fe9d3eb0-b708-4d0c-ca78-08dbfd505c64
X-MS-Exchange-CrossTenant-originalarrivaltime: 15 Dec 2023 09:29:39.2240 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: jSaEJG1RrDmgCuanzyq4yWVQFoPTCZojI96FDln/i/4w3QNB8Pwlvj/xhNUQlx8sBpu28d0HZ057PdiAZmATtywKy2FacEyPwVSQLfGbdAI=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR11MB7514
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1702632588; x=1734168588;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=cq+5ZveLSOEmW8JmWPkX9HEEUB+h6HBIEu9rcR5pEf4=;
 b=QwJ28OUshN4JI+yZjoLVkIzXr0sas7eWbgKZ/z8+4iQqE3crUosiKQQm
 WgU7I6sX8x7/TODIajlUV5k4trXxaJIVxXbnK6SupweHPvWqmEpjGefrp
 oqVAJjQ7p2YGsTFsXLWg1CnJuuvkXY61q1fpONkVq0fwz7BGT+u9CNl5V
 LplSJILV8HJQR1iQhdExORPozhA6+1TRw+nlgrK7Gmgv6G+y9tDnqkMlL
 synBp+IBNy+HhvpOD0S4n059w/YCn5QiYBmlSTWTaJ8Pl2nKMwbIK2yci
 nuSTmIAbZVrgjj132xx/5+s/xYWmGLzUvmgnWNiguTSk6O14P8O4czKh7
 g==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=QwJ28OUs
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-net] ice: dpll: fix phase offset
 value
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
Cc: "Loktionov, Aleksandr" <aleksandr.loktionov@intel.com>, "Kitszel,
 Przemyslaw" <przemyslaw.kitszel@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

PkZyb206IEludGVsLXdpcmVkLWxhbiA8aW50ZWwtd2lyZWQtbGFuLWJvdW5jZXNAb3N1b3NsLm9y
Zz4gT24gQmVoYWxmIE9mDQo+UGF1bCBNZW56ZWwNCj5TZW50OiBUaHVyc2RheSwgRGVjZW1iZXIg
MTQsIDIwMjMgMTA6MzEgQU0NCj4NCj5EZWFyIEFya2FkaXVzeiwNCj4NCj4NCj5UaGFuayB5b3Ug
Zm9yIHlvdXIgcGF0Y2guDQo+DQo+QW0gMTQuMTIuMjMgdW0gMDk6NTAgc2NocmllYiBBcmthZGl1
c3ogS3ViYWxld3NraToNCj4+IFN0b3AgZGl2aWRpbmcgdGhlIHBoYXNlX29mZnNldCB2YWx1ZSBy
ZWNlaXZlZCBmcm9tIGZpcm13YXJlLCB0aGlzIGlzDQo+PiBmYXVsdCBpbnRyb2R1Y2VkIHdpdGgg
dGhlIGluaXRpYWwgaW1wbGVtZW50YXRpb24uDQo+DQo+4oCmIGZpcm13YXJlLiBUaGlzIGZhdWx0
IGlzIHByZXNlbnQgc2luY2UgdGhlIGluaXRpYWwgaW1wbGVtZW50YXRpb24uDQo+DQo+PiBUaGUg
cGhhc2Vfb2Zmc2V0IHZhbHVlIHJlY2VpdmVkIGZyb20gZmlybXdhcmUgaXMgaW4gMC4wMXBzIHJl
c29sdXRpb24uDQo+PiBEcGxsIHN1YnN5c3RlbSBpcyB1c2luZyB0aGUgdmFsdWUgaW4gMC4wMDFw
cywgcmF3IHZhbHVlIGlzIGFkanVzdGVkDQo+PiBiZWZvcmUgcHJvdmlkaW5nIGl0IHRvIHRoZSB1
c2VyLg0KPg0KPldoYXQgcHJvYmxlbXMgZG9lcyB0aGlzIGZhdWx0IGhhdmUsIGFuZCBob3cgY2Fu
IGl0IGJlIHRlc3RlZCwgdGhhdCBpdOKAmXMNCj5maXhlZD8NCj4NCg0KSGkgUGF1bCwNCg0KQmFz
aWNhbGx5IHRoZSB1c2Vyc3BhY2UgcmVjZWl2ZXMgdmFsdWUgd2hpY2ggaXMgbG93ZXIgdGhhbiBp
dCBzaG91bGQgYmUuDQpJbnN0ZWFkIG9mIGV4cGVjdGVkIGluIERQTEwgc3Vic3lzdGVtIDAuMDAx
cHMgcGhhc2Ugb2Zmc2V0IHJlc29sdXRpb24gdGhlDQp1c2VyIGlzIHByb3ZpZGVkIHdpdGggMXBz
IHJlc29sdXRpb24uDQoNCj4NCj5LaW5kIHJlZ2FyZHMsDQo+DQo+UGF1bA0KPg0KDQpUaGFua3Mg
Zm9yIHlvdXIgZmVlZGJhY2ssIEkgd2lsbCBwcmVwYXJlIGJldHRlciBjb21taXQgbWVzc2FnZSBh
bmQgd2lsbA0Kc2VuZCB0aGUgdjIuDQoNClRoYW5rIHlvdSENCkFya2FkaXVzeg0KDQo+DQo+PiBG
aXhlczogOGEzYTU2NWZmMjEwICgiaWNlOiBhZGQgYWRtaW4gY29tbWFuZHMgdG8gYWNjZXNzIGNn
dQ0KPj4gY29uZmlndXJhdGlvbiIpDQo+PiBGaXhlczogOTBlMWM5MDc1MGQ3ICgiaWNlOiBkcGxs
OiBpbXBsZW1lbnQgcGhhc2UgcmVsYXRlZCBjYWxsYmFja3MiKQ0KPj4gUmV2aWV3ZWQtYnk6IEFs
ZWtzYW5kciBMb2t0aW9ub3YgPGFsZWtzYW5kci5sb2t0aW9ub3ZAaW50ZWwuY29tPg0KPj4gUmV2
aWV3ZWQtYnk6IFByemVtZWsgS2l0c3plbCA8cHJ6ZW15c2xhdy5raXRzemVsQGludGVsLmNvbT4N
Cj4+IFNpZ25lZC1vZmYtYnk6IEFya2FkaXVzeiBLdWJhbGV3c2tpIDxhcmthZGl1c3oua3ViYWxl
d3NraUBpbnRlbC5jb20+DQo+PiAtLS0NCj4+ICAgZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwv
aWNlL2ljZV9jb21tb24uYyB8IDQgKy0tLQ0KPj4gICAxIGZpbGUgY2hhbmdlZCwgMSBpbnNlcnRp
b24oKyksIDMgZGVsZXRpb25zKC0pDQo+Pg0KPj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvbmV0L2V0
aGVybmV0L2ludGVsL2ljZS9pY2VfY29tbW9uLmMNCj4+IGIvZHJpdmVycy9uZXQvZXRoZXJuZXQv
aW50ZWwvaWNlL2ljZV9jb21tb24uYw0KPj4gaW5kZXggOWE2YzI1Zjk4NjMyLi5lZGFjMzRjNzk2
Y2UgMTAwNjQ0DQo+PiAtLS0gYS9kcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9pY2UvaWNlX2Nv
bW1vbi5jDQo+PiArKysgYi9kcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9pY2UvaWNlX2NvbW1v
bi5jDQo+PiBAQCAtNTMzMiw3ICs1MzMyLDYgQEAgaWNlX2FxX2dldF9jZ3VfZHBsbF9zdGF0dXMo
c3RydWN0IGljZV9odyAqaHcsIHU4DQo+PiBkcGxsX251bSwgdTggKnJlZl9zdGF0ZSwNCj4+ICAg
CQkJICAgdTggKmVlY19tb2RlKQ0KPj4gICB7DQo+PiAgIAlzdHJ1Y3QgaWNlX2FxY19nZXRfY2d1
X2RwbGxfc3RhdHVzICpjbWQ7DQo+PiAtCWNvbnN0IHM2NCBuc2VjX3Blcl9wc2VjID0gMTAwMExM
Ow0KPj4gICAJc3RydWN0IGljZV9hcV9kZXNjIGRlc2M7DQo+PiAgIAlpbnQgc3RhdHVzOw0KPj4N
Cj4+IEBAIC01MzQ4LDggKzUzNDcsNyBAQCBpY2VfYXFfZ2V0X2NndV9kcGxsX3N0YXR1cyhzdHJ1
Y3QgaWNlX2h3ICpodywgdTgNCj4+IGRwbGxfbnVtLCB1OCAqcmVmX3N0YXRlLA0KPj4gICAJCSpw
aGFzZV9vZmZzZXQgPSBsZTMyX3RvX2NwdShjbWQtPnBoYXNlX29mZnNldF9oKTsNCj4+ICAgCQkq
cGhhc2Vfb2Zmc2V0IDw8PSAzMjsNCj4+ICAgCQkqcGhhc2Vfb2Zmc2V0ICs9IGxlMzJfdG9fY3B1
KGNtZC0+cGhhc2Vfb2Zmc2V0X2wpOw0KPj4gLQkJKnBoYXNlX29mZnNldCA9IGRpdjY0X3M2NChz
aWduX2V4dGVuZDY0KCpwaGFzZV9vZmZzZXQsIDQ3KSwNCj4+IC0JCQkJCSAgbnNlY19wZXJfcHNl
Yyk7DQo+PiArCQkqcGhhc2Vfb2Zmc2V0ID0gc2lnbl9leHRlbmQ2NCgqcGhhc2Vfb2Zmc2V0LCA0
Nyk7DQo+PiAgIAkJKmVlY19tb2RlID0gY21kLT5lZWNfbW9kZTsNCj4+ICAgCX0NCj4+DQo+X19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18NCj5JbnRlbC13aXJl
ZC1sYW4gbWFpbGluZyBsaXN0DQo+SW50ZWwtd2lyZWQtbGFuQG9zdW9zbC5vcmcNCj5odHRwczov
L2xpc3RzLm9zdW9zbC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC13aXJlZC1sYW4NCl9fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLXdpcmVkLWxh
biBtYWlsaW5nIGxpc3QKSW50ZWwtd2lyZWQtbGFuQG9zdW9zbC5vcmcKaHR0cHM6Ly9saXN0cy5v
c3Vvc2wub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtd2lyZWQtbGFuCg==
