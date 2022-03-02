Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id DE4094CB0B2
	for <lists+intel-wired-lan@lfdr.de>; Wed,  2 Mar 2022 22:10:13 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id E85AF40905;
	Wed,  2 Mar 2022 21:10:11 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Cd4NumXLJwhT; Wed,  2 Mar 2022 21:10:11 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id BD4B0408F8;
	Wed,  2 Mar 2022 21:10:10 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id DDA621BF3F2
 for <intel-wired-lan@lists.osuosl.org>; Wed,  2 Mar 2022 21:10:06 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id CA10660D57
 for <intel-wired-lan@lists.osuosl.org>; Wed,  2 Mar 2022 21:10:06 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp3.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=intel.com
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ceTUdv82goCQ for <intel-wired-lan@lists.osuosl.org>;
 Wed,  2 Mar 2022 21:10:05 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by smtp3.osuosl.org (Postfix) with ESMTPS id F145060B42
 for <intel-wired-lan@lists.osuosl.org>; Wed,  2 Mar 2022 21:10:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1646255404; x=1677791404;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=twKkGtL8LN6/R9ypDBroXiImr4lmc7EWlMvB80Lsfk4=;
 b=bFAjUVKk7/GD2OeKqJ3tfuDuuzIWaaWtBowV+PTCROrZo3PMvMxhKpG+
 D7krty1V8hNQyozmghZMnuVoTlZB0jv/9nmS79P6CYOuBQwKUX7eWbQSW
 jrXYF9GLvfPkYLn9CaeeuwMkrvZQMoivebW/AKZR9v79vIYUTBjlQFAVO
 0NYq7HqNKKVK7cdT6bDPbjNJ1c8XFGX8InKpuqS8G1NekV4dl9zjthFdx
 fy4ZaPBh9GMv8Vx9aSxwBr50AMhW9KEL6o29McDkkLN7uJTxpichfHdvM
 MESA9ouM5S9c0xGoM1U8/Ppsv88jg5FM1NZb0kfLkjffuuX4CFaYZ5mMN g==;
X-IronPort-AV: E=McAfee;i="6200,9189,10274"; a="237016147"
X-IronPort-AV: E=Sophos;i="5.90,150,1643702400"; d="scan'208";a="237016147"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Mar 2022 13:10:04 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.90,150,1643702400"; d="scan'208";a="551439398"
Received: from orsmsx605.amr.corp.intel.com ([10.22.229.18])
 by orsmga008.jf.intel.com with ESMTP; 02 Mar 2022 13:10:04 -0800
Received: from orsmsx608.amr.corp.intel.com (10.22.229.21) by
 ORSMSX605.amr.corp.intel.com (10.22.229.18) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.21; Wed, 2 Mar 2022 13:10:03 -0800
Received: from orsmsx604.amr.corp.intel.com (10.22.229.17) by
 ORSMSX608.amr.corp.intel.com (10.22.229.21) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.21; Wed, 2 Mar 2022 13:10:03 -0800
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx604.amr.corp.intel.com (10.22.229.17) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.21 via Frontend Transport; Wed, 2 Mar 2022 13:10:03 -0800
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (104.47.57.176)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2308.20; Wed, 2 Mar 2022 13:10:03 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=lToY8HEztSBzgEHTrA9hBH6va0E8O284HeYLne/SWuyOVYo6ARHbvPtCLwaNVg9c9t0CSPGsvxQu9EzqNNrqHZAWQWgau0sFlNjUuMZMV+y9Ykej+akKTJlsK0zcHBhpqLPTxMU42HuBMnf+E/nJXF/US8X/W+8y/MAi3YKmzfGv/szVuytGjf46SQDQVWacTlI6YQoD1JcESChAv6rPTbU6XmodHCXk7sOEEFqeYkOcC/BDXSfsYRcFuk30Y9ALeW0XRMq2HbTwAVnfE9BPlM+lwtfjprM0BnNaFXMt/oDsdT/nYuOnGPOPulo39nkSYfyf3YsfU7emSA4gGkLeXA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=twKkGtL8LN6/R9ypDBroXiImr4lmc7EWlMvB80Lsfk4=;
 b=TYOwLKf3NKDsdYNlwDG5O8CJj5ZKpL2Zs401zYeZbg9PLsP3LHrazjgk1Pjv+TQ5sN23SoBcBG7PMhFsmiqfkCxdcP5qtrVTncK88SliCZoamC9gUSYn7jWnAybwSk94zTGiYpO0GLdVfmvbFkXnSrtDJnDc4by/JwFn0UMIZMNrGLtc1XBVsN89xWM+b3zk1IiEPW/oKFaOjSP+8V4D+ZrnIClYqG8WwoXdJRxHHjKtkYHA5HD4ZymhxmhSntAyQgbMqcbvc94IWZiwlC1Z1IlG37LqKplc/+JAzXCtZbYtdaQ9yRMONrR9vB5ygN4wbip3adXqRdrXotVJLtLzeg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM6PR11MB4657.namprd11.prod.outlook.com (2603:10b6:5:2a6::7) by
 BN6PR11MB3940.namprd11.prod.outlook.com (2603:10b6:405:82::33) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.5038.14; Wed, 2 Mar 2022 21:10:01 +0000
Received: from DM6PR11MB4657.namprd11.prod.outlook.com
 ([fe80::1912:e2ed:a440:4910]) by DM6PR11MB4657.namprd11.prod.outlook.com
 ([fe80::1912:e2ed:a440:4910%3]) with mapi id 15.20.5038.014; Wed, 2 Mar 2022
 21:10:00 +0000
From: "Kubalewski, Arkadiusz" <arkadiusz.kubalewski@intel.com>
To: Joe Damato <jdamato@fastly.com>
Thread-Topic: [Intel-wired-lan] i40e and TSO with MPLS ?
Thread-Index: AQHYKN6XWNP22JWnA06houkUcSxyOKyh91qAgADME0CAACGiAIAHscsAgAH+fACAAAxVkA==
Date: Wed, 2 Mar 2022 21:10:00 +0000
Message-ID: <DM6PR11MB465794A7D38CFD093B81C9479B039@DM6PR11MB4657.namprd11.prod.outlook.com>
References: <DM6PR11MB4657EB65F784C3E816FD27FB9B3C9@DM6PR11MB4657.namprd11.prod.outlook.com>
 <DM6PR11MB46572510E594BF3E789AC5CF9B3C9@DM6PR11MB4657.namprd11.prod.outlook.com>
 <CALALjgzQPDdNTjCBD+S2Adymk9XTH4qa4Sb6-kBuh96oKg+ajQ@mail.gmail.com>
 <DM6PR11MB4657CBB8B06ACCAB0CE201429B3D9@DM6PR11MB4657.namprd11.prod.outlook.com>
 <CALALjgxJ-=WbWBS0VxxSNWA17L6mMZA7xZa-XBBeOsYy6KujEQ@mail.gmail.com>
 <DM6PR11MB46572379068898154F187F889B029@DM6PR11MB4657.namprd11.prod.outlook.com>
 <CALALjgyJhZLZALV5w3C-Etus8ZCRzeCBpwYVZgF9VUQptAQMjQ@mail.gmail.com>
In-Reply-To: <CALALjgyJhZLZALV5w3C-Etus8ZCRzeCBpwYVZgF9VUQptAQMjQ@mail.gmail.com>
Accept-Language: pl-PL, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 9ef4c135-f684-4b02-c75d-08d9fc910389
x-ms-traffictypediagnostic: BN6PR11MB3940:EE_
x-microsoft-antispam-prvs: <BN6PR11MB3940ADA3230C2C2FEECA82709B039@BN6PR11MB3940.namprd11.prod.outlook.com>
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: Txeqr3SyJ0OS0EEIOHYxE97Eifxf0fVAP+MzmihLSWSneaW1EQFtqbe1snwrURv34UcNrRg/vhbzfiuTHRcdqP4godarGRvdPO0XKGtOkOp2rCtUElBzlcVlQYBCcN6rCGuPTw7gREMLr1djs/adxYq/wbC0GLPWUOrBG9DOepwNl/XKI9xNBVX2+mkEw50Or+uRLkBMsQbzeEbaSXiRJBR/EI1t+TOCAFKyTBbNgAi6S6qh1lYc9tTgavuHxf99JXCMozWG1CHgU8mji4YI4UDdjc+CEmCjKbDbFw0exo6gXLgUep89HhNFk3a2hncihLxvCPO2SbqJzYy2Mb4WQ2DAI6v8rQ8rN/qER10JTt6EIwaz7ZX1+47Op5TNqk/1AN/VVCi9XjylTF719rLLUQLVVQSzmGqvBMjxPNRsjQ48k/J+VgA3iqHrY9U/xqALLGiBe81ISpJaE53XzlCR27/o9oE4dWf4q/exHQusl3clg3hgPU48NpqrOhYULcxwF9mpPw2BZwFZm+b35ukkUbx0qB3EMR1+xioSa3GTgIszlU3tPXFyjDDkJ7JODj39uJjYQw1RXfKClwtevObYi4tiWB12NIz+sK+AHvlEumSnU1ZGXa4h6GsV8KgYsVYvbgSJTMWd410DCE21uqCSDr4gnpVToUOtFPSZ2e5RzbThXnUgpurq5+LbhNNwN/R1rGR0yBM/MxTujNM0Yckvp3aF4zRQcST0TpcVqhScLJ1S4XkCr2QgxEv0+GWFIJswCk8XiwXBUp9RGJymgrSPTjCvAbrFmMITO4wqZkJwteQ=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM6PR11MB4657.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230001)(366004)(38100700002)(2906002)(9686003)(83380400001)(7696005)(82960400001)(122000001)(6506007)(53546011)(33656002)(186003)(55016003)(26005)(107886003)(6916009)(54906003)(316002)(8936002)(71200400001)(52536014)(4326008)(8676002)(966005)(66446008)(66476007)(64756008)(508600001)(76116006)(66946007)(66556008)(86362001)(5660300002)(38070700005);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?S2NlUkpWdE5PaitjN0VVYjJYeGoxWmNSMjd2S3k4bDg4TzArR08wck84RjdH?=
 =?utf-8?B?c0hNODBLMjJXK0xsSTZwcHZka3RlVFhGSGpCQUJOdC9OaldsRkw4K1B1VjFx?=
 =?utf-8?B?UHNYTFAwaTZSckhTSEZmV21DRm5oKzJOcjlBdWtSRTRnUjVHazdsWlpaeVlm?=
 =?utf-8?B?a3c1eUVwNWpUMGxnVGFNcG40NTMrd0tlSmRzTm9ka1YrL3dPSURIVnJ4Zmls?=
 =?utf-8?B?aER3eUoxY1R1K3p0dGZ2RHN3VVBOWW9TYnU3R3FxUnQ0ZXhLZE5qUlU5RTlt?=
 =?utf-8?B?dkd1ZklITkV0c1pZSU5DTDJnWmZOdzJRNFpKNWx2emZ4WFBSalJscGJ6Kzk0?=
 =?utf-8?B?Ym4xRWpRRjN1VXpZaGRWMTJRanF0OVZyRTVJcG5OR0xJaGFqVnNxNWYvbEsv?=
 =?utf-8?B?Tk5MS1plUk5ST3ljQWFlVm9TeG1iUDBocGNhcFdPaFZ4ZGh0M0dLME4vU2pk?=
 =?utf-8?B?KzRYQ1cvK1BuU1Uyb3NxdTU1OU9UZkUvVWV4L3hMT0h4dUlDc29VK2FVZWdW?=
 =?utf-8?B?SzFzbXBHMTdISnRSZ1MvWWxiLzlxQjRmaEEwUEk0MHZVbnQ0Z0ZYZGFaeDl6?=
 =?utf-8?B?N2dva25sZ1hTZERwaDNKZ2g0MW5kcm5UNWpNSTJzaEhkbURLTjBPS3M0eWY5?=
 =?utf-8?B?c0xXUjdRNDlHa0JxeXlXQit3bDZYcHlLbWo0M1F4dzJVYWtwZHRRcUFPR3Mv?=
 =?utf-8?B?d2NxRTdmQnVwSzJhVzJEdXlpb0lqRzlBeS92b252bUhtZndFclRJdmF3RFpO?=
 =?utf-8?B?STVvRE0rT1pveFlxN3ZKNmp6Ym44VG8xVStZK1lZdEtVZ3JmZm92dnE5M1RU?=
 =?utf-8?B?UlN5SzdKSXd5THB6UmlpSWZmSy9jYS9MWVd0OFNrWmdJcmVUWFF6UG1hUWVE?=
 =?utf-8?B?dFd4SC8vMjFoVUEvaVNuTldjUFdsUk0ydWZPQTh2d1dRakZvNVFkbDdYNzg2?=
 =?utf-8?B?aFpLaVRFMVpqN2RTdkxDbDJlMzZBZlN3WFpuZURiWTExY3piZEJoempvcGlT?=
 =?utf-8?B?NHZEMlp3WlpMQm5JcGlPam0wS1hjSDQ3SWFyM0FrSzJmaWtpZytxTXBQNEV4?=
 =?utf-8?B?T1ZmNzRTWFdUek9KY1ViQUZwY0VmUlVzakVtS0dFVDVWd1JJL0V6UU9neFR5?=
 =?utf-8?B?V2JaZEY2UnNwSmdqR0NwSHpZT2xwVHB2YnE1c3d6cUE2MU9Cem5lTGRtK1dt?=
 =?utf-8?B?R0VXRVVkS0ZQNys2bmRXYU1pOHdQU2VlcktpT2J0OU5XamFISnRiaW4xTDQ5?=
 =?utf-8?B?ME1Mc1JLU2ZIZDFhVCsxUDVOem4rVVVvME1sZTlOMW9yb2hXZ3pnckRNdWpG?=
 =?utf-8?B?cHZ2c1hESnhVN2s1TFQzcU1xdjhpS1Yzb2lVQks3Nk0xRHora0VQWm8yN2d0?=
 =?utf-8?B?Y3NUQW9ONkk0dVNNT1gzUE5VV3FCVGVBalZCMUZocHkrZWRSaElaZVdLUWc4?=
 =?utf-8?B?cWZhVGVSYzdmOFd4MmxLOUozMHhkUjVydmg5UlFWZWpXZm5SZ1Ava1ExY3FP?=
 =?utf-8?B?WWlxRXpidnkvUXNNWEM1c3JyR2gvSjlhVGtGNkgzYU5BWXE2SFJXeklWb3Z3?=
 =?utf-8?B?THA1U1dhdDNUcmJqbUx5SWdGREFPc0V6alRGMERWK2NTVTcxSHRURndtdUo0?=
 =?utf-8?B?OW5qRjZkNTQySmxpbVRDOHA0d3lRYVRJVmJvTWdqRzEyNlE0T3dycXhoYWYy?=
 =?utf-8?B?RW9mMno2QkRvWHU1M0VaYnNKN2dBOXlJdlRMdlIyMDJIcWRaL3k1K05Ib2h5?=
 =?utf-8?B?N2FmRm96MStMSHRSZUJLZGppcXR4WW1oWHNzWTVpYjI2OGtLejdRYkNqRWw4?=
 =?utf-8?B?WjdRQUg1T3JSazE3R3kxZTMrU1h0UWpuYW1aOFU2YmdCd1VYU2hYQkg5cDVF?=
 =?utf-8?B?UE1Ob2xBdWNwVFNYTjlPeXhsbTRmMThuSTFpZWdSckpkbHhJUjdqcEkvVDZS?=
 =?utf-8?B?a2VwWHpNREx5S3U4Y3ZtaUZYTUpxZ0RRa0pqTnB1dEw2RmhaWGMwVTRod0tQ?=
 =?utf-8?B?OWNqa2o4YmlGSWk5eGJFKzBRZE1UeXFreVVIRVVaV2tNb0NwcTBVMXc0b3M1?=
 =?utf-8?B?bFFueFM1c0xrT2sxRzYyQ3V4amlQUS9kOU1qK05VeXpJeDNaVmZwalZ6NXJB?=
 =?utf-8?B?RzhYbWRwVDI0THRZeVNZUEY1L3hhcFlQSlQyejhlUzR0Uk02eTJabWN6ckVP?=
 =?utf-8?B?SlZMRVJBQWZGK2F4eDFXWmJQMHZxaXRsMS8yOUpVNXpWZ2FCWUJQT01yaG9m?=
 =?utf-8?B?b2hRVnVESkxoZlZvNjUyNUp1ZmpRPT0=?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM6PR11MB4657.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 9ef4c135-f684-4b02-c75d-08d9fc910389
X-MS-Exchange-CrossTenant-originalarrivaltime: 02 Mar 2022 21:10:00.8204 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: XI1JCVZr9hx5UMrNs/8tZm2MRBwLiNpZ7h3jA+q6tE4R8IkZOB0MppvHLMEQ8noMAkvqsArWMeIFHTs2fVsyGNtZHZuHeKoxWXWWMjS4scE=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN6PR11MB3940
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] i40e and TSO with MPLS ?
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
Cc: "Loktionov, Aleksandr" <aleksandr.loktionov@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

> On Tue, Mar 1, 2022 at 5:58 AM Kubalewski, Arkadiusz
> <arkadiusz.kubalewski@intel.com> wrote:
> >
> > > On Thu, Feb 24, 2022 at 6:28 AM Kubalewski, Arkadiusz
> > > <arkadiusz.kubalewski@intel.com> wrote:
> > > >
> > > > > On Wed, Feb 23, 2022 at 9:56 AM Kubalewski, Arkadiusz
> > > > > <arkadiusz.kubalewski@intel.com> wrote:
> > > > > >
> > > > > > +Joe
> > > > > >
> > > > > > > Greetings:
> > > > > > >
> > > > > > > Does i40e (XL710) support TSO with MPLS?
> > > > > > >
> > > > > > > We are using firmware version: 7.10 0x80006469 1.2527.0
> > > > > > >
> > > > > > > We've attempted to add support for TSO+MPLS to i40e, but were unable to
> > > > > > > get it working. The patch is included below for reference, but it is almost
> > > > > > > certainly incorrect - and I am not clear if the hardware itself would
> > > > > > > support this even if the patch was correct.
> > > > > > >
> > > > > > > Applying the patch below and using tcpdump shows that:
> > > > > > >
> > > > > > >         - packet data, as seen by the pcap filter in the kernel, is large.
> > > > > > >           This suggests that the kernel is attempting to offload
> > > > > > >           segmentation to the device,
> > > > > > >
> > > > > > >         but
> > > > > > >
> > > > > > >         - those large packets are not ACK'd by the client
> > > > > > >
> > > > > > > This suggests that either:
> > > > > > >
> > > > > > >         - the device does not support TSO + MPLS, and/or
> > > > > > >         - the patch below is incorrect
> > > > > > >
> > > > > > > Does anyone working on i40e have any insight on this?
> > > > > >
> > > > > > Hi Joe,
> > > > > >
> > > > > > I have done some research for your case, good news is that we believe that 710
> > > > > > hardware supports it. Currently we do not have plans to implement such feature
> > > > > > ourselves, but we will do our best in reviewing if you decide to implement it.
> > > > >
> > > > > OK, thanks. I appreciate the information and your willingness to
> > > > > review. I am pleased to hear that the hardware supports it.
> > > > >
> > > > > > Such offloads should be supported on packets with up to 2 MPLS tags before the
> > > > > > IP header. For start, you might take a look for the features pre check function:
> > > > > > static netdev_features_t i40e_features_check(struct sk_buff *skb, ...
> > > > > > It probably requires an update after the changes you have posted.
> > > > >
> > > > > I took a look at i40e_features_check, as you suggested, but I am
> > > > > probably missing something.
> > > > >
> > > > > My understanding is that the call graph on the xmit path is roughly:
> > > > >
> > > > > __dev_queue_xmit which calls (in order):
> > > > > 1. validate_xmit_skb -- this eventually calls i40e_features_check and
> > > > > harmonize_features which will use the mpls_features bitfield set in
> > > > > the patch to turn on the TSO bit
> > > > >
> > > > Just saying, worth to check if the required flags are already set when
> > > > i40e_features_check was called.
> > > >
> > > > > 2. dev_hard_start_xmit -- this delivers packets to taps, then to the driver
> > > > >
> > > > > dev_hard_start_xmit internally hands packets to any taps installed
> > > > > (for example pcap), before handing them to the driver
> > > > > (i40e_lan_xmit_frame).
> > > > >
> > > > > In our tests of the patch below, we see that tcpdump reports large
> > > > > packet sizes. Since we see them in tcpdump, I think this suggests that
> > > > > everything leading up to pcap delivery (including i40e_features_check)
> > > > > is correct... otherwise we'd see smaller packet sizes being delivered
> > > > > to pcap.
> > > > >
> > > > > This leads me to believe the issue is somewhere in i40e_lan_xmit_frame
> > > > > or below -- most likely in i40e_tso, which my patch attempts to tweak.
> > > > >
> > > > > Let me know if I'm off track and misunderstanding your analysis, but
> > > > > based on the above, I suspect the changes to i40e_tso are buggy.
> > > > >
> > > >
> > > > Seems like your understanding is correct.
> > > > Are those packets actually sent to the wire?
> > > > Any stats are incremented?
> > > > Anything at all shows up on the client?
> > >
> > > The bytes are never ACK'd by the client and are eventually re-transmit.
> > >
> > > Based on the tcpdump output I think the packet data makes it to the
> > > driver unsegmented (which is what we want), but due to some issue in
> > > i40e_tso (or a hardware limitation) the NIC fails to TSO the bytes and
> > > they are eventually re-transmit.
> > >
> >
> > I think good place to start would be the 710 datasheet:
> > https://cdrdv2.intel.com/v1/dl/getContent/332464?explicitVersion=true
> > i.e. 8.4.4.3.2 Transmit Segmentation Flow
> > Please verify if your change is following the expected flow,
> 
> I think I found the issue.
> 
> The original patch only modified i40e_tso, but I needed two more tweaks:
> 
> - a similar change is needed in i40e_tx_enable_csum.
> - tx_flags need to be tweaked slightly so that the l4 protocol
> detection works in i40e_tx_enable_csum.
> 
> Tests in my test environment show large MPLS packet TX which are now
> ACK'd by the client :)
> 
> I will submit this patch to the mailing list now and CC you on it for
> a formal review.
> 
> I noticed ice probably needs the same change (assuming it supports
> mpls+tso), but I don't have any ice hardware to test on. I am happy to
> port this change to the ice driver and submit that as well, if you
> like, but I'll need to ask the ice folks to test on my behalf.
> 
> Let me know if you'd like me to submit to ice, as well.
> 
> Thanks,
> Joe
> 

Hi Joe,

Great to hear that! :)

If you think that it is required to enable MPLS+TSO on ice, you can also submit
the patch there. When the patch is submitted to intel-wired-lan they are
passed to validation team,  and once they are reviewed and validated, our
maintainer will propose them to be merged into Dave's next-tree.

Thanks,
Arek
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
