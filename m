Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 3F8E67C40F6
	for <lists+intel-wired-lan@lfdr.de>; Tue, 10 Oct 2023 22:16:56 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id C6B8260FB1;
	Tue, 10 Oct 2023 20:16:54 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org C6B8260FB1
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1696969014;
	bh=USS3n6laKbihCvf1lbE9GQKp3Pm9050ARU6TRNdADeU=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=7WYeFuRdC9cQtfRbRHheZWS//ignzTu8z3RfJqmdl31e/gTQt7xy69QBEfjdDDnjX
	 QLgm45b/BCnkC37T0O9z3u8h4oVkYHiJnc28vwVNkRF2jShx0OIgv43nsemOyM4uYt
	 uvrpR96wBF3s3D9XjtN30lwV1jLPJVXhJzXy2lK8xAk3ca+6mCF0Rit4iuZ81sDN61
	 RYUKqyXCzDjVdeg3LCUmjsuhQVgi9PxeLwayJqeS6ioqPvSiYvda0ltWM8zrezA7co
	 pmjgsmb1r7aj9Nq9+s2030x52cYMDDDxKLTFUACey79D6kJQdhpMTJYYqwukjqm3tb
	 iOQl7zMpac9GA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 36P11kfChKia; Tue, 10 Oct 2023 20:16:54 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 9A21B60F8E;
	Tue, 10 Oct 2023 20:16:53 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 9A21B60F8E
X-Original-To: intel-wired-lan@osuosl.org
Delivered-To: intel-wired-lan@osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 0AF691BF389
 for <intel-wired-lan@osuosl.org>; Tue, 10 Oct 2023 20:16:49 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id D663781E60
 for <intel-wired-lan@osuosl.org>; Tue, 10 Oct 2023 20:16:48 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org D663781E60
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id LsScNSKtIKjw for <intel-wired-lan@osuosl.org>;
 Tue, 10 Oct 2023 20:16:48 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.24])
 by smtp1.osuosl.org (Postfix) with ESMTPS id F06CB81E57
 for <intel-wired-lan@osuosl.org>; Tue, 10 Oct 2023 20:16:47 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org F06CB81E57
X-IronPort-AV: E=McAfee;i="6600,9927,10859"; a="387339612"
X-IronPort-AV: E=Sophos;i="6.03,213,1694761200"; d="scan'208";a="387339612"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Oct 2023 13:16:47 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10859"; a="782996854"
X-IronPort-AV: E=Sophos;i="6.03,213,1694761200"; d="scan'208";a="782996854"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by orsmga008.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 10 Oct 2023 13:16:44 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32; Tue, 10 Oct 2023 13:16:43 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32; Tue, 10 Oct 2023 13:16:43 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32 via Frontend Transport; Tue, 10 Oct 2023 13:16:43 -0700
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.101)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.32; Tue, 10 Oct 2023 13:16:43 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=U50Q0caxdqPQPBkQ5CjQF0T2uiz3nn4ZZD07SLrWjFmeAUiMwvkOzD7RMGMNfcXnwsmkOfUXYvclkYUdMOjdK5jukcifemPvaioq2fErSdC3lYwkW1kOfk2UOaoPgaJjcSbmP0QfohcHz3i7+qMWgydEL7lrI8Jpz4bFQK0ikbgf2dckP86gVA/9WBVVQKgjJNF4fm5QZka/PqkYf3wuufsOFCea5627NfbMwIK+tceQpGeR5ngPO7UGMQXICaNnJZ5pKeXULMozLBsnruFVAxp4DCrWSfACWgabORCbTavmQDgFTqtMCoGZ3MulK6hlMU3Ke779TwnJlwgEdpdBlg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=RUjrOHfyAnpKbiORhSeWwn6u1x8xBXoaYR54BlrhU+Q=;
 b=j/NPv0Wom/d5eBAlt8h+luXPi+BEqqqsvj12LodbxDQpjSvqmQUXakxtD2covuCVWKPTOkRmWCD9/jblC7CJYO8zAAwoeF9Lq54nmGw2LQ16Xd5748K9aSh05exMtHrZQCDsYOSGbpiMAixTz6W99D9BMfF2FzleuUfdiNK9zDd8p0v1ricoiR42QiNeogZib/K5E+xXNGn6FQ8hF49tffv+NM2ctG/U1RkFY/x8R3CYdase01aDmpXM/ZS4bWb6VjEfx683ncNm2tf48ZCxTyb88s/ZkYdJxFAY9KvLzik9TEHJi/lSmm7AkgQSqFfCRuWnJE8qXieE65VUdDrfiw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CO1PR11MB5089.namprd11.prod.outlook.com (2603:10b6:303:9b::16)
 by IA1PR11MB6466.namprd11.prod.outlook.com (2603:10b6:208:3a6::21)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6863.36; Tue, 10 Oct
 2023 20:16:40 +0000
Received: from CO1PR11MB5089.namprd11.prod.outlook.com
 ([fe80::9654:610d:227a:104f]) by CO1PR11MB5089.namprd11.prod.outlook.com
 ([fe80::9654:610d:227a:104f%5]) with mapi id 15.20.6863.032; Tue, 10 Oct 2023
 20:16:40 +0000
From: "Keller, Jacob E" <jacob.e.keller@intel.com>
To: "Neftin, Sasha" <sasha.neftin@intel.com>, "intel-wired-lan@osuosl.org"
 <intel-wired-lan@osuosl.org>, "Ruinskiy, Dima" <dima.ruinskiy@intel.com>,
 "Efrati, Nir" <nir.efrati@intel.com>, "Lifshits, Vitaly"
 <vitaly.lifshits@intel.com>
Thread-Topic: [Intel-wired-lan] [PATCH iwl-net v2 1/1] e1000e: Workaround for
 sporadic MDI error on Meteor Lake systems
Thread-Index: AQHZ908qcFCoX7gHNECnpsDUJXvnJLBBiwkAgAD5M4CAAPplgA==
Date: Tue, 10 Oct 2023 20:16:40 +0000
Message-ID: <CO1PR11MB50898C4A40127DCE355A3BBFD6CDA@CO1PR11MB5089.namprd11.prod.outlook.com>
References: <20231005054441.3758364-1-vitaly.lifshits@intel.com>
 <36fec88d-3083-a2df-b0f5-7e2262157a68@intel.com>
 <3736b168-b736-4355-bed3-6bc4ff99aca3@intel.com>
In-Reply-To: <3736b168-b736-4355-bed3-6bc4ff99aca3@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: CO1PR11MB5089:EE_|IA1PR11MB6466:EE_
x-ms-office365-filtering-correlation-id: 3c0a6094-b9ad-4ee8-dfd0-08dbc9cdd062
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: a9CXnDFc/pWN1MG6BA9+bekD9kuEaF7H+mXTFQ8P1erutx/3BhYZ/C4fcpSJFdEqO0LJiO6Efeo0sg/kJbzIuC1s6S+qw4e0E99h/nV6iV3UQG4iU0ZWt/B8N8ycDD7whEue9rIdWgH2wh17M2ab7vgulqKUX++P/KO797iXGiIbMEbVbBx+6QxHm8MYZGriLaB4s1LVcCe9xy2ZhX2pmGEMmziM3Vp5ZlXw/Mg7gqIO94ShKilZdvOTxSzpN/JLghan+H/PFT1+jLquwLs4EvjuRVpWeOkYIDR9zZN6lEHQrKkfZHTedxOATfPJEV7K9/DAgoLkKo2ee6mpLElz7/DfWHk8XpXZZAqdpngNQxdHbSyPI1zxCk58UXI+tarkN7nClH8ICJZGlte7XmXhqOK0k8Y4W1HS7IKTrSc564ULGKH212SmJaxI/fT7RMvv7wQmwh3CcGpC4tKXS4qg+tEOQJMdtyHKSdu65rMaXP4WGEYXB710jfR9xOHN8lLWR2+i4WY1822Or16OwUgxe3FoCydv66fQzlHOZIsh5Ab58UhNaIvmD5Z/T6W4K3kaKkbLHsK4DsF54bA4FH4lDR28N6KO9G0Z6+qE7OEKNDo=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CO1PR11MB5089.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(346002)(366004)(39860400002)(396003)(376002)(136003)(230922051799003)(64100799003)(451199024)(1800799009)(186009)(122000001)(82960400001)(86362001)(33656002)(38070700005)(38100700002)(2906002)(55016003)(9686003)(71200400001)(53546011)(7696005)(966005)(478600001)(41300700001)(52536014)(5660300002)(6506007)(8936002)(8676002)(83380400001)(64756008)(316002)(66476007)(66556008)(6636002)(66446008)(110136005)(66946007)(76116006)(26005);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?aFc0RDUvZ0RnRHdMd2x4THBCeTkrOXljbzZvaXFWZGVZeVkwVFA0c2ZWelZo?=
 =?utf-8?B?SlA3b25lYVdaWnVCaTJFR2E5Q2FaVFlvckFuRUhLQlRHNFRVTnl6NEhqUkda?=
 =?utf-8?B?VTVNaWVHUmpQdzgreGNwb3pHaGZDZFR4R1Nkc3dWYTAxNndPK2Y0cHQwNFAw?=
 =?utf-8?B?RkJ3UzVNK3VsZkl0TVBjL0MrR2hmNDNiWERteG9ubnJJSXlJdEczTmM3T21Y?=
 =?utf-8?B?cjU5eERkeFBYWFR4TG9UMzRYajA2a1JxemFLZDA3K1F1ZDVXVnVLVFkza3Z2?=
 =?utf-8?B?MGtUTXZwQ1FSTHBPUVVyZjJJQWdXbjNMRTV1aWo1bTJMZWF2MUR5eFVZYldU?=
 =?utf-8?B?T2dvT0tiUzdST0llbkltd1JPNHdLSGJnUmdFbG1lOUMzd2tNTDIzeWhRZTVB?=
 =?utf-8?B?aHIyWUt1RmpZbzI3TVFPUTZSMGh1T2RyeUY2eEVBZmF6UnNlVHlGSG1QdDlP?=
 =?utf-8?B?UGNPRVBKM3oxS1ZlNVlzTHpYWFMzVFZmekxObFQ2QkZZbUxKL1ZCNjhuYmtS?=
 =?utf-8?B?Zm9POU0zNzM5QitFNVZqcmE5OWtDUjVqZUtTNDZYaVRmaEJLMktIbG1iUzhO?=
 =?utf-8?B?TDFSQnpVS3VSSVdhKzh0YXZ0djdld1YwOWJ2NU5BTUhZSGs3RmMrVDV5Skxn?=
 =?utf-8?B?NU1Ob0piNVhPZC95U3RMaHV1RGpXREoxR2xPWVJRM01ETk9BV0NWbjY2Q2N4?=
 =?utf-8?B?Rnp4ZVBrSU5OOGxrNWdwQ0YxTVBiMjFpd0ZXTGd0Mnpoc3orUjNLaW9qd1c1?=
 =?utf-8?B?b0xBb0pnUEJ2cGJFc1dKWXpwSGU1dUc4MlZtekxpV0VZbzRMY3oxWVdaS2FI?=
 =?utf-8?B?cUpWZEhnTkVmMVRrTGxSQ0p6dTZXamRGTy9LQXA0ZVdud0crYVIwNmNLWmo2?=
 =?utf-8?B?b1hPZ3VmRzg1TVZCKzk4OEdHQnY1eHBsckwzdkRwckF2bHJzQUpSTElkeCt4?=
 =?utf-8?B?M0NhMERqTFFlQnJyNUFQZ2FLSTRmNmM2bE0zNFhoT3BvdUFKL0hWUktRU3Fz?=
 =?utf-8?B?aFB0emxaYjB6YkdBNUxvVktPUjRsYUlsVWxibGwreStXUVRsM3JWc2w2MWZI?=
 =?utf-8?B?ekZkSitZVDkvMk41OVVXQitzK21SOVJBTDhGNmx0MS9xMXQ0N05QazU5eCtr?=
 =?utf-8?B?TXhuVFk5VVdrZEtZcmU3ZGg3WXNIMkZsQzZCNVk5S25NZ0xpUTU2b2sxZEhL?=
 =?utf-8?B?U1VBVzkwdTBROFNnYkxHb1c1cVliOW9id1hzaXpkZk9sMFIrOVRQM2sva05M?=
 =?utf-8?B?MmoraURoOGZXVW1sSm5xSlhrQnhKdDQ2L1JVK2NJOGc2K0phOEFBWWw2UjRh?=
 =?utf-8?B?UEZQZ1MwcnlDKzRLdTZnSTFMTEpFOU94bTJ6NVBJeGhJcXFkeDcxM3pXUGVW?=
 =?utf-8?B?a1JDbzVoT0IzdXFybjZFcW5VWjczSkUwRU5HMlM0dGxvUGdPaGdNNnlFQnZG?=
 =?utf-8?B?Mm16WVFBY0lITFRqZlhaazh4ZjVzSGpqbW4xWWZaSmUremRXYno0VzZPMm5H?=
 =?utf-8?B?N1daRWdBSzVhM0JZcCt3bHFTZUxvZDR6Qm51aWp4cU53NWozVWlJZ3Ixd0VW?=
 =?utf-8?B?Z3RFTUVVbTlxUERORThQMTlaZld2N0lEV2VCWFV1MWVKL3Q2TWxpUlVOSlBz?=
 =?utf-8?B?M3g4bm91bFExaTNNVUxMNk5VdWZuNDZkZ0RDeEZEY29nekhOM0FESk5DVERN?=
 =?utf-8?B?eno5a2xleG1pM1VXeG5OQ2VORC9DUWNDd01xSmpZS2tXZWdBV1Z0TlVQeFVD?=
 =?utf-8?B?WjVXTFBBRGk1b3BDWEUxd2drTlVQNWNMWkpUN0RMZ2FpRW1rbnJIaWx6NnZ6?=
 =?utf-8?B?eUV0WXR0SDcvVy9MTldHRURrdzdESHlHZUp5TEJhbnpUQXFabEdQekZycERa?=
 =?utf-8?B?Q0ZZK2plaHE0WXNKbGhibVI2WER2bmFqdmNFTWRLeGhsdXhONnFSMmJVQ3J6?=
 =?utf-8?B?eFJyTXhLTTdlM3o2cllOR1MrNGdPQllTek05SzJROURGMU11SHRFUXVrVWMy?=
 =?utf-8?B?d3Q3MEs2UkVKNmI1TVA4ZlpUc0tWN1cvSVZINTl0bTRDblRXZU95S3AwTUVp?=
 =?utf-8?B?RWpUK2xKUE42WVgycTVuN0Q0NGVNOEhENFFrZnE4SVdRQ05yTHNYaWV5L25V?=
 =?utf-8?Q?DIVU66CD28+n5eoRDL2LxX1H7?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB5089.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 3c0a6094-b9ad-4ee8-dfd0-08dbc9cdd062
X-MS-Exchange-CrossTenant-originalarrivaltime: 10 Oct 2023 20:16:40.4649 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: pWOH0dEKQvpWt642tN44divId22vAiN116uSsFedYMFDtQrg+GRPMWvi2lVJ9Q6Ap35FTuqZNz1cDfUjapgwI/DqHnY4I5YOPtwFt145bGk=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA1PR11MB6466
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1696969008; x=1728505008;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=RUjrOHfyAnpKbiORhSeWwn6u1x8xBXoaYR54BlrhU+Q=;
 b=IuHmCG8QqK6oH8HkH0cn9uKoYH9Ew0lwedj2aMCxB5ziM2jGeuJPB9dg
 S5DuAFy+Efew5OPcjkwMVkzUhHPuXTobrVuiuqOj+ATUFX+myKTH7oQzb
 04/4VMf/MA23spltQoJJ6W1i6lfqA8+cHs+fXOgKprJMBcY3BfIPIW9/c
 X604tMSYa1CpLdNaCA60ExalRGL8nMjrOGSrAof1Jby2qw/ZnXsNWSySJ
 2ic/dyTzwDPQuI41yTNRFv/J2ImJw+376nHT1/LHD8CwGan0K08r0RT8s
 5Cn5JDdptNQq6w1RUozcb9lb172t4gN4UKHtO/Z+9H33uEpB1x25xC3uo
 A==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=IuHmCG8Q
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-net v2 1/1] e1000e: Workaround for
 sporadic MDI error on Meteor Lake systems
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



> -----Original Message-----
> From: Neftin, Sasha <sasha.neftin@intel.com>
> Sent: Monday, October 9, 2023 10:20 PM
> To: Keller, Jacob E <jacob.e.keller@intel.com>; intel-wired-lan@osuosl.org;
> Ruinskiy, Dima <dima.ruinskiy@intel.com>; Efrati, Nir <nir.efrati@intel.com>;
> Lifshits, Vitaly <vitaly.lifshits@intel.com>
> Cc: Neftin, Sasha <sasha.neftin@intel.com>
> Subject: Re: [Intel-wired-lan] [PATCH iwl-net v2 1/1] e1000e: Workaround for
> sporadic MDI error on Meteor Lake systems
> 
> On 10/10/2023 0:28, Jacob Keller wrote:
> >
> >
> > On 10/4/2023 10:44 PM, Vitaly Lifshits wrote:
> >> On some Meteor Lake systems accessing the PHY via the MDIO interface may
> >> result in an MDI error. This issue happens sporadically and in most cases
> >> a second access to the PHY via the MDIO interface results in success.
> >>
> >> As a workaround, introduce a retry counter which is set to 3 on Meteor
> >> Lake systems. The driver will only return an error if 3 consecutive PHY
> >> access attempts fail. The retry mechanism is disabled in specific flows,
> >> where MDI errors are expected.
> >>
> >
> > A bit ugly. I assume we don't have any idea of the root cause of MDI issues?
> 
> Agree.
> We haven't a root cause yet. This problem is under debugging. We prefer
> to keep it in the net-queue for widespread testing meanwhile.
> 

Makes sense, thanks for the explanation.

> >
> > Especially having cases where we disable re-try which is a bit awkward.
> > I don't have any alternative suggestion tho...
> >
> > Thanks,
> > Jake
> > _______________________________________________
> > Intel-wired-lan mailing list
> > Intel-wired-lan@osuosl.org
> > https://lists.osuosl.org/mailman/listinfo/intel-wired-lan

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
