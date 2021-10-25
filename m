Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id AD8AC439DB5
	for <lists+intel-wired-lan@lfdr.de>; Mon, 25 Oct 2021 19:38:51 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 2F86C40190;
	Mon, 25 Oct 2021 17:38:50 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id NnutNKH6x_dG; Mon, 25 Oct 2021 17:38:49 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 4563740108;
	Mon, 25 Oct 2021 17:38:49 +0000 (UTC)
X-Original-To: intel-wired-lan@osuosl.org
Delivered-To: intel-wired-lan@osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id A46FA1BF334
 for <intel-wired-lan@osuosl.org>; Mon, 25 Oct 2021 17:38:44 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 81B936076D
 for <intel-wired-lan@osuosl.org>; Mon, 25 Oct 2021 17:38:44 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp3.osuosl.org (amavisd-new);
 dkim=pass (1024-bit key) header.d=intel.onmicrosoft.com
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id SJKWRMHXfXgW for <intel-wired-lan@osuosl.org>;
 Mon, 25 Oct 2021 17:38:42 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by smtp3.osuosl.org (Postfix) with ESMTPS id CF50F60761
 for <intel-wired-lan@osuosl.org>; Mon, 25 Oct 2021 17:38:42 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10148"; a="209806215"
X-IronPort-AV: E=Sophos;i="5.87,181,1631602800"; d="scan'208";a="209806215"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Oct 2021 10:14:11 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.87,181,1631602800"; d="scan'208";a="446323184"
Received: from fmsmsx604.amr.corp.intel.com ([10.18.126.84])
 by orsmga006.jf.intel.com with ESMTP; 25 Oct 2021 10:14:11 -0700
Received: from fmsmsx609.amr.corp.intel.com (10.18.126.89) by
 fmsmsx604.amr.corp.intel.com (10.18.126.84) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12; Mon, 25 Oct 2021 10:14:10 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx609.amr.corp.intel.com (10.18.126.89) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12 via Frontend Transport; Mon, 25 Oct 2021 10:14:10 -0700
Received: from NAM04-MW2-obe.outbound.protection.outlook.com (104.47.73.171)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2242.12; Mon, 25 Oct 2021 10:14:10 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=YkUoIRz9uDDU+1ak7RU08DkgYH2fMeYbYO5MNMWTZazoBavLIUztdCvZrVMLfUDEAN6ntTJPAf/Soq29h9/bPKQyoGertzzqRJkPrNnBwRFM6g00dJeoyJLbw4RM7axKyyvx48iaP8jJYcW8vOKXxPmTlLWiBCL6c/ShQCX9vbadfyth5DsMRsH7EQLsEsswBaN2NEm+pb3UnrL4kl9NzAyXKHOa2+2Ejrq+K3VN6wIA1Bz2bd2Vm+127pCSTf7zh//7Qu7Xa6FSYwOJ8ZR1OBL97cNRjiwLwDHeuhCaCTeEg8y9ocv8M2IRyU53LzLa8PgK7yUaONFCo/2jgDcx9w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=V5kNhgiCOMuhiwAs/A2o/msrjprRhTwe7ecxukikjWU=;
 b=Pzfv4ZjielQo6MSV9WV44O/LWtIdRw6ox9p7IVNBsLznsYmGjnWxPI835uoD7M+FXZT6lhUxRPMhIkVyP3cFwUup063pn5+24ws7xzP3MY/0OgRKsX0B8+z0jcnkBMoRqIi5l+BoBE+3mdlQIsQG3XCkZKAlSSuULz515bwPLwNDtv3uUmRg/op+1QlHzw9wH+6GExWwRToZAnVqJsWbVq/yrLreHVJgqllu/nNH2hvfO0SmSdUSkY71KHRprC8wGNRLYV0ekJk2y/5Y/2LpPyN6R5wngzO2Vr+C2H/4E4gilJDvIh25GIQVYDFaKIO4WpxDsjSgVxyjqysCqCEhuA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=V5kNhgiCOMuhiwAs/A2o/msrjprRhTwe7ecxukikjWU=;
 b=CFOECeptvRA8StNGT5BkSWm5PqS8MBKIe1FmBTnrlaa7RxweMnHnuKnjUI8tJcoh7WxatqUoZKsT3c0TdMtCAifcSOoxgFvYM6gN/VJQXaDQSr22oYS0EupGeomSILtpXeF5Y/n6Z5Sh4kRNyA/jA/YtRUP3aibDsoti1pfFmkI=
Received: from SN6PR11MB3229.namprd11.prod.outlook.com (2603:10b6:805:ba::28)
 by SN6PR11MB2847.namprd11.prod.outlook.com (2603:10b6:805:55::31)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4628.18; Mon, 25 Oct
 2021 17:14:10 +0000
Received: from SN6PR11MB3229.namprd11.prod.outlook.com
 ([fe80::d0d5:c84e:41b8:a9e4]) by SN6PR11MB3229.namprd11.prod.outlook.com
 ([fe80::d0d5:c84e:41b8:a9e4%3]) with mapi id 15.20.4628.018; Mon, 25 Oct 2021
 17:14:10 +0000
From: "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>
To: "robert_s@gmx.net" <robert_s@gmx.net>, "htodd@twofifty.com"
 <htodd@twofifty.com>
Thread-Topic: [Intel-wired-lan] [PATCH v2] ixgbe: Allow disabling NBASE-T
 suppression hack
Thread-Index: AQHXxyAlX34kbsGTIka8H4xbS0F2HqvexB6AgAB34YCAAFptAIAEYk8A
Date: Mon, 25 Oct 2021 17:14:09 +0000
Message-ID: <3ec21b215c88604e4e8475240be9d11f5abdb1e5.camel@intel.com>
References: <trinity-58e35e17-0323-4cde-bbed-1582c3520822-1634891867291@3c-app-gmx-bap44>
 <9f4603a5-7811-c653-951b-777070f7ce54@molgen.mpg.de>
 <392a6fe-e920-31b-42dc-a214e311233c@twofifty.com>
 <trinity-7ec48fc1-b568-49df-8837-218ec2c431c4-1634940936574@3c-app-gmx-bs49>
In-Reply-To: <trinity-7ec48fc1-b568-49df-8837-218ec2c431c4-1634940936574@3c-app-gmx-bs49>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Evolution 3.40.4 (3.40.4-1.fc34) 
authentication-results: gmx.net; dkim=none (message not signed)
 header.d=none;gmx.net; dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 3d3aac7b-3450-4b2d-0a7b-08d997dadc12
x-ms-traffictypediagnostic: SN6PR11MB2847:
x-microsoft-antispam-prvs: <SN6PR11MB2847EF0CEDB91E7891390352C6839@SN6PR11MB2847.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:5516;
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: rUX5zTjuf1ymlLwzJUcjeJod0aUsdANOeVrJsQ1HPnFKvc1qNV+QHcvKEi+KgTfkNH62LuwlgUFbzcCPTG3J8DB7fltQeOQhvcQX9Guxm0RORpSAahDPI3eL9ZC1vselbuXWNB0afjTu+F2hNC32IBOx0d0AL0RUbjUojfhEloVbEgXi7rX7SyYmqLtEjaAVbpWz5cmn893WYyeTdwnlvW+v91lBWaG8+Rg7/1I33sOnwJ51yXQv93VsSqvOkVvYDRqpBwjewepXMkieoGyQtyENzsYQABzkUMeVaFdnC+b8tbPZJ3tlhRZ972vKloaJExNDHir4gH4IDMjkxeutEWN12qWQSCbCi5mxtcz4ychTtWoMDceZ3JGanwHNTUurJIf/mIvD7JH733Q2GLoyWXlm1YVkMemI7crG+3sIGNKTrl9BwKDTLtL9kdtoRczwJZHgay85IyAIdpJ4fczbPS+FO8XaLNLWhptnCvhYi94ibj3yWeUormI58NCFKJe9urEZHYjvX1WF3X8vEeZ6pp+RoE4kxNlC26VCFuNXw9dWX/q1zUBUmY2mk4Pb02XZLjld92cXHlJz7wSIK82tKapBP0+9mLbwBnZXiNdXprwLeXP0xdJULAcrgqXNzeq9NcVptqftnVm9fc21jJiz3KR4Q0NbnOyBhc+sAvQBpXT4ojVgRhQ5NlPMMhsWGfIgDrT8amgBrTLZAvJvxXOaRw==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN6PR11MB3229.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(366004)(66446008)(2906002)(66946007)(6512007)(66476007)(91956017)(76116006)(64756008)(6486002)(66556008)(4326008)(8936002)(8676002)(4001150100001)(5660300002)(316002)(71200400001)(26005)(110136005)(2616005)(186003)(122000001)(508600001)(82960400001)(38100700002)(86362001)(38070700005)(4744005)(36756003)(6506007);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?MVBQTnllMEhTV2hSNE5MemZ5L0dzdjdNa2Uwb0Q3cE9IWjY0OFVtcFRmT3A0?=
 =?utf-8?B?bFBhbEhya01IemVuZjZhRTJ3RFZJbDlZN2g4WWxEOStTeGxvSDVmdUg2dmlj?=
 =?utf-8?B?anZSemVOTmlSMEV1S3ZhNGFZQlN3M2lwNUUrVUIzc1dUL295WDNGSExGZlJ6?=
 =?utf-8?B?MFlHYXNPbzdSTkt1WFltbzY4dmNVODQ2TStMMGE4UFZQbFVzQTdObU9ML1NT?=
 =?utf-8?B?bDI0Wmg5NVV5OXFxbWlCN0tzY21VSzhuTnlzckJZbjhRcHBBN2ZlZG9pakRO?=
 =?utf-8?B?R2RZQVNaM3dvQ0huM2JjdWJHbDgyazNnYXBKNzlYdFQvZEl0L0ZLZ1plVG1k?=
 =?utf-8?B?MmpzUDR5R2FFb25pUlZCMlpRZDM4blRVdWQvWXpBemJxYURxdEFCZjJpOTJ6?=
 =?utf-8?B?cGE1bjdrcWMvYk5QT0o5L0o0N0JibTFoeCtjZ252enBkSllxUXhkMkRzR05r?=
 =?utf-8?B?dGF0QzY0MCtpTldOMVpyMlZLNExPMzExUDJUczh6QmpFUjdVak5hZld2Z0Ro?=
 =?utf-8?B?UVh6MFpWMVNVZUQyUm9vUVY2M1B6S21vM2dQTittdURUbFhjOG5sSzN6OC9t?=
 =?utf-8?B?T2xEc1BRTW90Y2ZoVnV5QmhURW12empZOWJaY2JPRmxsMmFOQ1ZBdUlWYm5z?=
 =?utf-8?B?U0FnRi9MMWs5dmxxYjVCTnR0YkhLZ0EzRHIzYmVvOFRPNGwwN0V3MkI1MS9E?=
 =?utf-8?B?czRTZDRUK2N6UDFLVUN5UHhIRTVJRmlZRWhkY0duTVlJZ0hHb2pJc2tSQlg5?=
 =?utf-8?B?K1A2UytiTnRGeHh1blVXVVVXUFRkV3A2TE1rd213ZFNXU2hRblFTcGVkNTB1?=
 =?utf-8?B?RkJOWVZkdGZOTUM4cU1VWFM4bnM4VWtTM1hnVThXeFhXTEhJSEFHS29Seksr?=
 =?utf-8?B?YWdZS2k1RVErMW5pMXhIWGRPVTIvOWNUMWpQdWVmQjg3ZHd3byt6T1d4aVli?=
 =?utf-8?B?OHdtdS9JVGpJamNJUVQ4U2ZlSUxNcGxmdlJubkpuRHpMSkVQRkg4VFJpbURY?=
 =?utf-8?B?dCtPaWlmNkczTlB2RU5RaEtaaG01amw2TXRWWUtQMlRBb2dZV2RMTzIvK0tk?=
 =?utf-8?B?cHE2NDhhV2xlSE1vUDc1RHo0ZG01ZjM3MnFkWDNudzREQWFSZjlVM0RZSXov?=
 =?utf-8?B?elJwRzB2QkFCVHZqRC9XOEhaeXlhLzRNZk9QeSs2aDlwWXJFS1ZTS3Q5azQv?=
 =?utf-8?B?WkNBdkhFVHNXR1hqbllNbzhhT0tZNkxiVlloTDhYNVFJeVRaVmh1WVd5OHBC?=
 =?utf-8?B?S3RXM0lTL1JJUGdBY1VDVWo4aW9TclpzL1haMW9Id0hPd0Z3VzRKbEZtWEpt?=
 =?utf-8?B?K3ZwUE8va244dUVsWGRtM1piSmtLTFVqRkVVcThpQUdqSlZUcktYN3Q3RUx4?=
 =?utf-8?B?STNUTzdqUGRsMlRkRUlzckZOSys0SU9uMXBtZ210TWdFUm1BNWJ1T0tXQWZC?=
 =?utf-8?B?RDRLY2VGQXMrVzREVjV6MWVUbWFVek5aaWdsYk1jZVI5Y0c2MHR4Q3RWU2I4?=
 =?utf-8?B?eWtFSjd2QjdQR0FNcVY2WjRDeDdvbGplVWVaK0lFQURCcTBSTmthTFF3ZXJQ?=
 =?utf-8?B?LzQrakNpczhKcjRzRW5Odms4RFFnYkF0Y2pINWFvQVlMclJMQjc4ZUd5TWEz?=
 =?utf-8?B?WWhPbjVrUkdSMkQ2LzhTZ1E3NG1KVDJ1YWcvMmpIeERtek44RWhKbkhVcGFO?=
 =?utf-8?B?ZHppTnQwYm1TUXdDWFJsZ3JNTDNVY05KRDM5c0pNRmREYTNrZHh6Z0l5Rkd4?=
 =?utf-8?B?T1NyUlRZN25Ncy9CazNkbWhqS0c0cDU3eHRUSGJmNUFOd0t4OGlZV2N6Y3JI?=
 =?utf-8?B?TXNCWXhpOXNFbXNvbnpYR3ZEam5KQTA2OHViWTc0WHhRMmsyWVU1czFRZzJL?=
 =?utf-8?B?emJhTU5mamlpamYwa1VqaytQMVlkT00zOVhwdTU2ekpYTlAzRzFDZlhpcWhj?=
 =?utf-8?B?SS9ueXVtRGF1U3BuVllTSzhHVU9MU0ZuY2pML1J1bkV6WG9FK2dZQk9VbTBL?=
 =?utf-8?B?cVVtUVc1Z3J0L1E2aXIrR25pRW80WVBvWDJmQ2ZrQTNKLzA1YkpmZ0hBR0Uv?=
 =?utf-8?B?Nk54ZDlWeWdBOG95Wm5uN3FZTXB6NEhKRWdRK3k5UjFaNGxleStZcW8vL0Fi?=
 =?utf-8?B?SVBZeXFkaXdnbW10V0l3SlNjbUh3VHFwUzB1emUyNU9FZVFVMXlxRzBOM0tj?=
 =?utf-8?B?NDVYWDNhSFBBQUZMV1RDNFo4dWMyK1hVR24rRmdpQzdlWjI0ak5Kem9DdC9v?=
 =?utf-8?Q?Lv/o55OLDKk2oRuIKTOwhwiSYqu88rwEa0rEvUojeg=3D?=
Content-ID: <B7B362FD1251CA4F92C3F5F6ABA3745C@namprd11.prod.outlook.com>
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SN6PR11MB3229.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 3d3aac7b-3450-4b2d-0a7b-08d997dadc12
X-MS-Exchange-CrossTenant-originalarrivaltime: 25 Oct 2021 17:14:09.9400 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: cRXBII/N7pRri/u7HoRpx62ovhpb5iDrX5hh7Sux8va69x7ISZ3CxA9bOuAgU9LtNOVDLiRY4ZyK/uYbwaGqUJ1IM1pyEI/3affBKaHTSvE=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN6PR11MB2847
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [PATCH v2] ixgbe: Allow disabling NBASE-T
 suppression hack
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

On Sat, 2021-10-23 at 00:15 +0200, Robert Schlabbach wrote:
> On Fri, 22 Oct 2021, Hisashi T Fujinaka wrote:
> 
> > We're not likely to accept this patch because it adds a private
> > module
> > parameter and upstream will not accept it.
> 
> I don't understand. The module already has 3 parameters, so why is a
> 4th not acceptable?

The community has changed their acceptance of private module
parameters. While previous ones were accepted, they are not accepting
any new additions.

Thanks,
Tony

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
