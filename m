Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 6CE12403178
	for <lists+intel-wired-lan@lfdr.de>; Wed,  8 Sep 2021 01:20:38 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id A1A8080E5C;
	Tue,  7 Sep 2021 23:20:36 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id eho31BDHsAHE; Tue,  7 Sep 2021 23:20:36 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id C052180DCE;
	Tue,  7 Sep 2021 23:20:35 +0000 (UTC)
X-Original-To: intel-wired-lan@osuosl.org
Delivered-To: intel-wired-lan@osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 5D0571BF3DA
 for <intel-wired-lan@osuosl.org>; Tue,  7 Sep 2021 23:20:31 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 4A57240104
 for <intel-wired-lan@osuosl.org>; Tue,  7 Sep 2021 23:20:31 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp2.osuosl.org (amavisd-new);
 dkim=pass (1024-bit key) header.d=intel.onmicrosoft.com
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id bsgA7lbLDTSg for <intel-wired-lan@osuosl.org>;
 Tue,  7 Sep 2021 23:20:29 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 9BDC0400F1
 for <intel-wired-lan@osuosl.org>; Tue,  7 Sep 2021 23:20:29 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10100"; a="200543940"
X-IronPort-AV: E=Sophos;i="5.85,276,1624345200"; d="scan'208";a="200543940"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Sep 2021 16:20:26 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.85,276,1624345200"; d="scan'208";a="430405461"
Received: from orsmsx605.amr.corp.intel.com ([10.22.229.18])
 by orsmga006.jf.intel.com with ESMTP; 07 Sep 2021 16:20:26 -0700
Received: from orsmsx607.amr.corp.intel.com (10.22.229.20) by
 ORSMSX605.amr.corp.intel.com (10.22.229.18) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12; Tue, 7 Sep 2021 16:20:26 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx607.amr.corp.intel.com (10.22.229.20) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12 via Frontend Transport; Tue, 7 Sep 2021 16:20:26 -0700
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.49) by
 edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2242.10; Tue, 7 Sep 2021 16:20:26 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=dVMLKE6VTFsiRZ4KQiE63S6cYZCXZvx8sCnkJdlENstRA2tTCfCB+Tv5fZdSCqHg9hGdrsOMK7BL5NljPUNSf3LLx4Ivxh9MCfcofBttjyDinn+Kl6cvXixLtzHw5gbSVXCVDAuTO9V7IsCIo0pIBscI84TeriAcBL4WioQ0CjvJMETHOmyffjXKqWlrhTCN+YVQAn+P8//RW6ICM4PAVA/sjQz8FMuwxWhDFALEpgQSgwu3HrBxwgQ1lB8AFApN+ftOoobZWaOytcMnj6BwatVm5jSeqQ8ba3TiBnl/dsHM9r5ayo1s+rsvfotaDfI2OI3h7HAaxnZ+LsepoK9RSw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version; 
 bh=XjDHM6N/kbSmPuI0f8xabCH2ktASpDqvfdX/ndm60MI=;
 b=kt6j3s1e2xUTmCnoyhsnEL5dxal3bpDE1hSOsZlQc1bmuMqQ1sp02qDofNLN7VTbcZsp/4CWRsGDWL3KiOSIFGsB8AdaL+fsVBNv4QSDaJJiKkI1ooOf7KqyUAxAu9HvO0cAo8QidLJ5i1MiauQGKv9o9S5BEYABvz1HfGzOr2SACJ/NHUvlfed1DMX2GEaV3aabnupxpOlIMIX3mr8NEXj3F0t3Dvt2TFe+vgE3W2UjokoOwDTDWP0aFacmFG5I70hQu5wFedwWrYfWCsxn3Z1ydzfnnBdp6aO9UiP3cWAg+E9NftoasaFXMUELYvA3505bAisTHQBOEMIwHSpORQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=XjDHM6N/kbSmPuI0f8xabCH2ktASpDqvfdX/ndm60MI=;
 b=GhT66IlQk36OY56thDB/ptQX8jn6qQ+cgsqLKr3tZNSXsFIh3iFOTSxkTX/qRsXE9quR6pDBCgwE7uswxFgYXYXvcOFX9KrKtcY8O1QTkG/FGexGviRWROEPlIwLpfyh0UGvTtZ+ZPn073+UgVu0H59DPOaHFvL+5ofbLHEKmak=
Received: from CO1PR11MB5089.namprd11.prod.outlook.com (2603:10b6:303:9b::16)
 by MWHPR11MB1278.namprd11.prod.outlook.com (2603:10b6:300:1d::23)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4478.17; Tue, 7 Sep
 2021 23:20:25 +0000
Received: from CO1PR11MB5089.namprd11.prod.outlook.com
 ([fe80::c587:f332:ac46:5921]) by CO1PR11MB5089.namprd11.prod.outlook.com
 ([fe80::c587:f332:ac46:5921%6]) with mapi id 15.20.4478.026; Tue, 7 Sep 2021
 23:20:25 +0000
From: "Keller, Jacob E" <jacob.e.keller@intel.com>
To: Felicitas Hetzelt <felicitashetzelt@gmail.com>
Thread-Topic: [Intel-wired-lan] Potential oob access in e100.c:get_regs(_len)
Thread-Index: AQHXoANKPgKIZw9wKEKgK4hKZ1CHC6uS2E4AgAQWeoCAAk7IEA==
Date: Tue, 7 Sep 2021 23:20:25 +0000
Message-ID: <CO1PR11MB5089966E71DCA79851929DCCD6D39@CO1PR11MB5089.namprd11.prod.outlook.com>
References: <1f52bd29-43e7-0639-57cf-abfb7dc9804b@sect.tu-berlin.de>
 <c2ca99a7-9389-de32-bf2d-5128158a094a@intel.com>
 <d656c5d2-bdb6-5b05-1c4a-bcf6ec9194df@gmail.com>
In-Reply-To: <d656c5d2-bdb6-5b05-1c4a-bcf6ec9194df@gmail.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: gmail.com; dkim=none (message not signed)
 header.d=none;gmail.com; dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 7f3f6cc1-2a3a-4383-8800-08d9725612b8
x-ms-traffictypediagnostic: MWHPR11MB1278:
x-microsoft-antispam-prvs: <MWHPR11MB1278DA86F2A2EE83646B5CD1D6D39@MWHPR11MB1278.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:7691;
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: UrjeGdMim5b0FOTaxmEskDhjIF4YFIV1prvGLhAd7r3ViZuobXqkisi+w54sOloMp2PxnjoNI8n4fFNK+rNV3Jb9RNrqwHCXEW+7wg+8S+/wKmYTKr6H1HXsBLjpgKd8hBRVl8EVsPQqUBIFmldzmiX2453PQl0fz1CJw5gxY4tDxpLC676MVcZnMYXzkTy6JTPJkTzSeG5Zb3DIbK5g1oT5p4eXmHelov+4U2dvnyVVb/GkwaTFyDBJmoEGqUvtGPMjTdlCxb+tAU1nEUgJJxakXkxnNFlloG6KPAY/utHMJUI/UNH6LtgjmoEgW4UCxPwT29XbJWEBRiKqIhLl8SNPPDZtXFcluxKN+n7UoDSu1NLA98KN7avpa+hixT4Ypr8Z6+BipBxLNCg+rS+BrJ56TPtN7glN2LtN7jytyccATzBWeKPzNz7tqZHxWHqxLFJWzlCPMDY5y4L0m2bqvpJF8nChicZbwJh2QpVCT/4h5unMm8546DdSIsVgoXTpiex8F5PnPNFu84hAfwJ6NihjD7F0aQyY1+41Gk1Qf8KDOi0W62Athft+TqSiP7Sng0DVoAWDSOF4tOA3t44isDoQt/X6BRUMGi693Ffyq89ZYEXyFI8nsO1m2RSRWgzflvM9xGhVlbTvtQoPMcmwBObyuR44TwQ4BK8/FvvNctmoXt9/MiPA/mcFJHPVWWubLZd78Dzid7kk5E+VQ1B+lw==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CO1PR11MB5089.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(4636009)(376002)(136003)(39860400002)(346002)(366004)(396003)(83380400001)(2906002)(4744005)(86362001)(316002)(5660300002)(38070700005)(6916009)(7696005)(33656002)(52536014)(38100700002)(6506007)(122000001)(8676002)(186003)(8936002)(71200400001)(66446008)(26005)(66476007)(64756008)(66946007)(76116006)(66556008)(53546011)(478600001)(9686003)(4326008)(55016002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?Q1l4ellGZ0o3b0NVQmdQcDVuM1dvbnJkQUM0ZmFPbXJ1eUhkQ0hWSTdmUU92?=
 =?utf-8?B?d1FJb2RVZkRjK0JKclJkclU3WFBQa1Q0WFg2SnNPdVhPaHFEODZFcFJMZGNF?=
 =?utf-8?B?cHQ5Tm1DdURMVGRha1hWOEdzdFJsUytqcFB4WjJ5cHl5NDVWTXlSK2JFWkVz?=
 =?utf-8?B?OHJHYWVPYWxhODVHa291a3lJZmRqbTFLSVl5N1lrUmlqT1pFUUdpUGZ0RFow?=
 =?utf-8?B?UHo3d0Q1NzZUNmF3L3pkS2F0R1RrVis4L0p5cUxvWXFuSkVvR0Npd3kzYk5i?=
 =?utf-8?B?dTJ6ZEh2akxBYWNvTHJQblYzNTN4NlNORG9WZ1lmM0ZvRVpvMmtxWS9uUld3?=
 =?utf-8?B?elBTV0NqbnQ2OERJdVJFZjBkTTBTYWhwUnhyVUZsbkIyWFVZNTJQSWRZbk96?=
 =?utf-8?B?Zy9vcFF3U2FzWWkrYzVhcFc0RWR1VU5xTFRTTVEwaDI4MkUrM0RGQVJ4c1Qr?=
 =?utf-8?B?V3R1SFI1NnJSYmsrNWFsK1NMZGNMVS9neEx4aXNjZzlnb1I3M28wQzlVNGo5?=
 =?utf-8?B?dzkwVy90OUo1Yyt6ZXQxcnJWUWwrN3FnNmkvSTdnaUxaYzJySXRrMUNzdFJu?=
 =?utf-8?B?WS9vOXBrS1VuTHdXeFpQK0Q3cHlKNVlFb0lOSlV4SlV4bXpjYThBbWdibFp4?=
 =?utf-8?B?dDNwT1VVUGVSWHRBam9hYW9KTlo2bTBOdER5RURLakUxd1FDRzBaYS9OU3Ba?=
 =?utf-8?B?RnBiRXEvYkNHTGN1WUplb2QyQkRXTUhlQ3Y4dWFmMTladE5JL09IQVdlVitK?=
 =?utf-8?B?WlExNXdOaFJkbTlqRDdGZU1Jc2lKcy81MExocjBkWENwVnZsaVVRR05IUnIy?=
 =?utf-8?B?NXJMeU5XWE1hU2tZQmk0a3BvZWthV0JQZUV4Y2RCMXBNUDloc2pKQkhyVUJr?=
 =?utf-8?B?cko0ajhxSFIrY29za09sUFpBS2ExajZmbnFHSFVaLzZnNHFCakpzTXJ0ZStl?=
 =?utf-8?B?L2JiSnZvQUF5QjdwdlZ6UDJhWTN2NFE2UWlaRzZyellYek5UNjZUSW1YRjlI?=
 =?utf-8?B?UGg0MzVaeGRPU3Rxc1RoVUlJMC9wcjlIWUJ4OUwzQS9abUZlMGR3ZzkzeW1Y?=
 =?utf-8?B?REF0TnBhL2pab1FSdndEYzgydkZXbDFwT3kzUUt4VGhvM3k2MmlYQ29XRlpG?=
 =?utf-8?B?dDZHdEg4dmRIcTVHTkFYRjVDdGhmNUNzY3ErUkZocDBRdHZtbEtlYmgrU3lk?=
 =?utf-8?B?d2l5S3FNNG1aVXBhOUR2OWRJMS9pekFUOHM0Z3p1LzE4Wk5pb3p2MlE3NHo1?=
 =?utf-8?B?cTg5aXlzWFltZVE0Q3Y5dXY1YmJSWVp2UlRPNGVoZW5XZHhuWWtCdDd5TXAx?=
 =?utf-8?B?R1VmNTI1bmh2dndEbGZUc1FJQkFiSHdXODVrMStCUERuTFBqUzR0ekxoNlQx?=
 =?utf-8?B?WmtrUjJTL2hmSU0zU0RKSlJzd3VHNWRTQUZQeFdnR3dINlF5MWJka05MMDBl?=
 =?utf-8?B?YjFEb0loRTZMUHhtdmZQdVZtYnJRZmJWUC9LbndGeHBBTGdWanFTL0FQZktN?=
 =?utf-8?B?SWVjNW1Za05VRE9WVFZNaWgxWUlsTG1FcDk0elVOQTZ0S3pxZzBHWUpUMktN?=
 =?utf-8?B?ajRPaTJwWmtvMFNPY1VaaFV0NSs3UEFHY1RWQjNXd2tSb1Q0VlBHT0pmSVpy?=
 =?utf-8?B?RGdIV1M5M2pKeml6K014QitqV0FMZkI5MFNRazdzQ0dSQnJ6RVhYTlRxZDZG?=
 =?utf-8?B?SG10cFkxVW0zS1ZzUGpEbmhwNjNNdG1hZW1XQ0JNUjE0TktybDlLanQ5MGFU?=
 =?utf-8?Q?bsLfPDO3GWY7j8ares=3D?=
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB5089.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 7f3f6cc1-2a3a-4383-8800-08d9725612b8
X-MS-Exchange-CrossTenant-originalarrivaltime: 07 Sep 2021 23:20:25.5786 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 6CLdnBFa7xT+NyTeOb4EVQOR4K0/8YmSHKL2SOY4L4AiBZT9DXsOxhgvopQDcxqfRbkcJ7JqZKi4LDfsiwnyoEk+jGcOwktxrxcJ11kzopM=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MWHPR11MB1278
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] Potential oob access in e100.c:get_regs(_len)
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
Cc: "intel-wired-lan@osuosl.org" <intel-wired-lan@osuosl.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>



> -----Original Message-----
> From: Felicitas Hetzelt <felicitashetzelt@gmail.com>
> Sent: Monday, September 06, 2021 5:05 AM
> To: Keller, Jacob E <jacob.e.keller@intel.com>
> Cc: intel-wired-lan@osuosl.org
> Subject: Re: [Intel-wired-lan] Potential oob access in e100.c:get_regs(_len)
> 
> Hi,
> > Are you seeing the same thing I am?
> 
> Seems to me like you are right! I wonder why this was never caught though.
> 
> Also, KASAN did trigger on this path which I guess is an indication that
> there in fact is a problem.
> 
> 
> Regards,
> 
> Felicitas

I am guessing it is because it's e100. Not heavily used and you'd have to specifically run the register dump ethtool interface.

I can create a patch for this, I think it's worth fixing even if it's e100 because it would cause a kernel panic.

Thanks,
Jake
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
