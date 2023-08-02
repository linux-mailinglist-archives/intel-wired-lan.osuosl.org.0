Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 7A85276C7A4
	for <lists+intel-wired-lan@lfdr.de>; Wed,  2 Aug 2023 09:57:01 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 1CAD380B6C;
	Wed,  2 Aug 2023 07:57:00 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 1CAD380B6C
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1690963020;
	bh=Lg3GYBPldSrb6oV86nU921uw/WBwtOQ5ZCj70Aa4tM8=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=UoxDINMbx3oayXQSsPO9UCS8wPojue2rKSn0zYnkjpL7aWkQBX/ut1qiAqSKlLhBn
	 NbVXRLy6qhoDpZw7EJ3wXWfe8/GXSKh8/spYy2hfpvj6zuFFiok4tMr767ZAmMHjUW
	 6HRRSM3zO7wS24qy8AuotfWh3w3A4d0NcIMDeDMf6anDog1+KG5K5Ji1dMl+mggSfd
	 lujb+uphBu0z15WCQ/Grh52mAvvywiyv/bQ5FKesvBpXXjKGa8rjQVuyH+w5E+CWqr
	 Cnb31IlUjfu9yN8YVwlFXace8Zv6Km/uXNymgubyeVEWhr2wUGYJqXoae4uf1Kko03
	 OXGW8KyFtEN4Q==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id KWNPnZ8b7lhZ; Wed,  2 Aug 2023 07:56:58 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id C04B080C83;
	Wed,  2 Aug 2023 07:56:57 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org C04B080C83
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 466DC1BF3E8
 for <intel-wired-lan@lists.osuosl.org>; Wed,  2 Aug 2023 07:56:53 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id E8A1241932
 for <intel-wired-lan@lists.osuosl.org>; Wed,  2 Aug 2023 07:56:35 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org E8A1241932
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id bgqBBF_h8-sJ for <intel-wired-lan@lists.osuosl.org>;
 Wed,  2 Aug 2023 07:56:34 +0000 (UTC)
Received: from mgamail.intel.com (unknown [134.134.136.20])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 3443C418FA
 for <intel-wired-lan@lists.osuosl.org>; Wed,  2 Aug 2023 07:56:34 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 3443C418FA
X-IronPort-AV: E=McAfee;i="6600,9927,10789"; a="359554366"
X-IronPort-AV: E=Sophos;i="6.01,248,1684825200"; d="scan'208";a="359554366"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Aug 2023 00:56:33 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10789"; a="722773496"
X-IronPort-AV: E=Sophos;i="6.01,248,1684825200"; d="scan'208";a="722773496"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by orsmga007.jf.intel.com with ESMTP; 02 Aug 2023 00:56:33 -0700
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27; Wed, 2 Aug 2023 00:56:33 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27; Wed, 2 Aug 2023 00:56:32 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27 via Frontend Transport; Wed, 2 Aug 2023 00:56:32 -0700
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (104.47.56.168)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.27; Wed, 2 Aug 2023 00:56:31 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=g4xim1lZzZXw7i7MLM4SgGdR7MzJcOK0GGYLWnHr0yhK4TA6EQmlAPtyFY9dYlBnFhfi3qf0O+levccwOlU1zQkb1tOhak/TUa1jDqmPSxh+9A9DOK2DeRfrp+WMb95JBAUErUrlvA+eLsAuqcjBNfafTpkPEpooqosSTELuJbPPVS/P1D5mRGdgizVHrtiTBoyLDjpWHEt4p3IuSGmD3fIuT6zgtzn4SWWBH4k3udeXqKlIF6AVzWVe7KQ6Pdqeh4oWtT6aVB0HKwa5gPep2JMAgUDYArAnSkZFRXfiuga1I9ZmpfSJz3aMi31oxjAJg7qJhD/Ia/ysgQ484rVnKA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=dIhMTf7sPDo2+ClcWu3xkakXIE+kZkgvWLcPvkYghgI=;
 b=WeXHjqt1T7ttEx18j0Dp5/iGeGqQPWnjzt4xfoAGuxsxVSSCRQA9wxF6j25EEHy9v+qfWt3NjZ4mq536UIEz5j/o9GZvqIj9gt1UE0LRapqtNNuBDfRkQl0h+FgWCwnEjAkXzIe9/F4C6B399UkJXNF2oBtRTtXFHbkIbgOmPopza7TwZWgPmWbB/stdvWrnj3BcA0iWlje5IX1T/+TU6tYs0K9ADFcKTx+/Ftu3npTSSQYv9KDN8+k3ZyhJ60OUSoVayZwyErlGD07KtynpJWpUIBjr722PjimpnCWfHgrTTUxMSL1xPm67Bh3b4ScHag7JSXiEs53madmAV/QKQg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM6PR11MB3723.namprd11.prod.outlook.com (2603:10b6:5:13f::25)
 by PH0PR11MB5657.namprd11.prod.outlook.com (2603:10b6:510:ee::19) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6631.45; Wed, 2 Aug
 2023 07:56:28 +0000
Received: from DM6PR11MB3723.namprd11.prod.outlook.com
 ([fe80::1e9e:bb95:66b2:e3f1]) by DM6PR11MB3723.namprd11.prod.outlook.com
 ([fe80::1e9e:bb95:66b2:e3f1%4]) with mapi id 15.20.6631.045; Wed, 2 Aug 2023
 07:56:28 +0000
From: "Guo, Junfeng" <junfeng.guo@intel.com>
To: ivecera <ivecera@redhat.com>, "intel-wired-lan@lists.osuosl.org"
 <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH iwl-next v2 07/15] ice: init marker and
 protocol group table for parser
Thread-Index: AQHZl3FU6WJkoe3xlk+gAh5JzckZOa/JDaIAgA3Qh3A=
Date: Wed, 2 Aug 2023 07:56:28 +0000
Message-ID: <DM6PR11MB372375A0A6727FE7CB69DB27E70BA@DM6PR11MB3723.namprd11.prod.outlook.com>
References: <20230605054641.2865142-1-junfeng.guo@intel.com>
 <20230605054641.2865142-8-junfeng.guo@intel.com>
 <f0c45e75-ab87-cb2f-cc7d-903763c841f2@redhat.com>
In-Reply-To: <f0c45e75-ab87-cb2f-cc7d-903763c841f2@redhat.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM6PR11MB3723:EE_|PH0PR11MB5657:EE_
x-ms-office365-filtering-correlation-id: 0ea7c2da-f010-440e-b7e8-08db932dfa74
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: DLJpHAw4x7dm9yi7Z4io8R07odiHP+Y9Zhu65Wuj2EJBQyitx1mZwIpr03g1X0gI5Ea1Wstk3LTqklfZW9FcKfBqJpg7aUXoZP2hsFB/N3A1DwdFPT4eSz6msE1EpJjDHxINtCZtB9eXwwbwld9nPtKG5pRejvOBdDiBHhF3Ui5SIbX7NKFdl0UdY2qLmj6n+Cw5kAb8Sm8aoD6P1xfG5oLrv0JrL46XHhnWucmcd94UHVsgVGfDCozW9i5SYWEMklNUh5mp7F+aEHCMeXgQWCWHcdASYgG2Zy5E4bxXxsUFvVFfofuA44ZBbbXDojJoRVCskPx6bKXdiOI+Tc8C24MVEv4qArdQh0O8/vGD6dI2OoomvUcLRpvpNPtWdxRZjN8IKBoE0TeIHIFdUi3RcCDub3lrscH9h+Z9MqwZI27entnRLtVLQxJy0NOTLigwzx6TeA152t98wT8dA5ctOFpU0TIF5m8g+nihi2ZpkONIsh/ZBK9lzmRFwcJNvSpm1uhtliR+h/0cUXKI2+CnZm3eheB/OOEli/6tawElwdm8OrSwsCEV2caDaboQLjgAqKEnvSeq8ZkCky7pxjKen+LB3jjvToCHfAr1SV0vUWXqRvzpIQ5/u8B+5VFQKfkB
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM6PR11MB3723.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(39860400002)(376002)(366004)(136003)(396003)(346002)(451199021)(55016003)(186003)(9686003)(316002)(86362001)(478600001)(122000001)(54906003)(110136005)(38100700002)(76116006)(71200400001)(66946007)(66556008)(66476007)(66446008)(33656002)(64756008)(7696005)(4326008)(82960400001)(6506007)(53546011)(41300700001)(26005)(52536014)(8676002)(5660300002)(8936002)(30864003)(2906002)(38070700005)(83380400001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?MEI5MUlVOUJueFdJVFUwaU9aWHBSbGFlVFZQUXNDcGtNTUZqSDJRNytqcGN5?=
 =?utf-8?B?SnVJZTk1NGg1WmN4bDFTRnlaVjdnanRPMGZQK2lTcHcxK000MmpRVXdRWTZh?=
 =?utf-8?B?UUZBREUxT3BPVEJFcjhpOUlUYkVXOVVQSEZxY3RYdldUTDNKeER0b0VnYjFp?=
 =?utf-8?B?Q0lRcmRPeGY1ZFhQSkloY1FVLzg1aU56THUydGFWenpEMldlYW92eGk4eXlC?=
 =?utf-8?B?MU1CTDVzV2hrcFlvRWxkQXRqQ096cGkrcGl6WXE5bERZWExXcU1wNHorSndS?=
 =?utf-8?B?ZnE0NklqR0pKbGo5b1VmVHlBdjdETHltNUw3NTcyTnE1andmeXdvL3huSkZn?=
 =?utf-8?B?aXVic09GdkI5d1BFVkxxRUZNaDhCMmNNWWRYL1hOR3dWTG8rU1ROdHhDekJh?=
 =?utf-8?B?a1lBa2RCMTVhZkJDVHJSNEV1TkhGZXpyc0ZKQmkyTHQ0MFEwb1h2Um50UStV?=
 =?utf-8?B?dVhnTWtBaHphYi9HNklEV0d0NzBjREttT1QwKzdVbTk2dmFHeWtTckJuVzI0?=
 =?utf-8?B?WXl3a0t2blMwUEhuTHNlTDU5Zk11U2VpSkV0alBEZHhGV3FGSGdIWFpuQVZW?=
 =?utf-8?B?NzZhSlE4a1BHV3VieEp5NFFMTGN6UXZUc1FWL0h5VHZjVUtkMENGNG1sb2lK?=
 =?utf-8?B?VXJvNWZlNUxzZHhMdy9XYksvNkg3Rm55T0UxSWZWK0U3SWk1M0NNa3gvQ1Y1?=
 =?utf-8?B?bU9ramZEV0psOGNsemNHM3VDU2lLcjhWRHp0dVQrVXEvMDVtVHdZZlM5dGNB?=
 =?utf-8?B?eXhTUDd1Ty9nSTZzdlBKWFdUSTZTY2J3KzFPNEdwbW1jRzNDRlR6eU5kSDR4?=
 =?utf-8?B?a0RzbjZtVUxmNUQxa0FUL01EZ1dNNXJGbEtwVTBCbDl0S0NZWnVZS1phckVQ?=
 =?utf-8?B?UzFvaXJHWmJWOHVjMTNub1dDUEZRUjJSUUI5Y1MrOFJmWFJQUUhuVW4wN3lP?=
 =?utf-8?B?N1IyZXN6cjRyRWRFenhGZU5Qd25YcGxmQ3FLU3dJU0xOdXk3Z05MTUZ6OTI1?=
 =?utf-8?B?dmpMZUNkT2ZCdVVZbVNuNXhIRTBXTkNuVDlZKzIxaHpuNm14U2VyRk94Umdq?=
 =?utf-8?B?ZFRVWVY2OG1seWJ2NzdoMzRnbEtBUjF5MW9pdjVXNWtKaWR2d0ZPWFBJVElv?=
 =?utf-8?B?NG9BOHcrSldRUWkzc1pYSzNNOTR1WnY4T1ZEOHNVWkZnb29ZR01mKzExYmJ1?=
 =?utf-8?B?Tk1TNktwY2ZDZGZTWmE1aGk4ZVZmS04yQ1VjVWpLbEFQTXNOck5VWlR4VEVC?=
 =?utf-8?B?L0JKSGNaSkV3RHY2V3lvVllOUzg2WkowMlMyV3MzNnVmSkdkdndjV3dURlVt?=
 =?utf-8?B?YUtEdlQ2aC9IM1lMc0xvUEpINDdWcW1nNUdSMWxaSENjUGhlVjMzazZmQmlB?=
 =?utf-8?B?ZjNDbUZLaXpxcFkyZnZNL1NWSlRHaEFkOUxBUG43UG11MmtkL0tXVHBJU0Vq?=
 =?utf-8?B?RXI5cTVnMFB2UWxKUHM2Vm5HcUpiVlhGTitFa1lPb1F0a2dBZ01WTXV1TnBq?=
 =?utf-8?B?TEFWZlZWc2wxRW1TRmZ3QVNmZTlBWEVDMXdGcG8vSU45T0pVaHRrTHNWQjNT?=
 =?utf-8?B?RG9iRWgyQ0h2RDNOcXRtemlqQWw2VkpFdDhxYnpsR2twNVZHWmtUUEZFUlBH?=
 =?utf-8?B?dWgxblFSSGQwNXVaeHFFWkk1Sm5yZ1ZNSEc2WEIveHF2MStlUGx0c3dMTTkx?=
 =?utf-8?B?U0ZBUFZiQThIQkdvVWFDaVhtSHYxZGQxSzdFVURpbVM4OG4xMERRY1hxWC9B?=
 =?utf-8?B?dFJ2OFQ0d0NhQzJUOEJqdUxpMTRqVlQzUTArOWJWanhVemZqMTJ3b0NhUUZk?=
 =?utf-8?B?TnpyUTAwRXZ3ME1SWllVbjBLcTZSekhLczBUd3FHN3hFV08wS0x1MGJlSDNk?=
 =?utf-8?B?WURpV0E3aUxxNWwvZjlrNFB1QUFJOVJLWi9DYkRjMjc3M3lXS3FFMmhQQWlv?=
 =?utf-8?B?OVE2V0FNUHBSQmt1TTdDMXFBZWhPVXAzZlMzRGVKb2k1aWdtWWNDOHdWMzQy?=
 =?utf-8?B?bWFpUFFxb3lDcXVRS24rS1kxWldadllMV2V5RnNXOElKODUzc0FEanZQaXY5?=
 =?utf-8?B?cWRMS3dGSnFvUjRQMjhPTVk0RFVoMWwwKzBUVXc0ejJucE83SktGd2tNTkxM?=
 =?utf-8?Q?09/Hr60gSq1qklu/T4seMwlro?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM6PR11MB3723.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 0ea7c2da-f010-440e-b7e8-08db932dfa74
X-MS-Exchange-CrossTenant-originalarrivaltime: 02 Aug 2023 07:56:28.7462 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: fHnrob4NfAFATOCYOzinfL1OjOH2GQ12NaBuWI4krkW7e6F5OgX2zWkO0zikNu+Q1/D42Rs+Qu2YjBgAnNPZdA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH0PR11MB5657
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1690962994; x=1722498994;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=dIhMTf7sPDo2+ClcWu3xkakXIE+kZkgvWLcPvkYghgI=;
 b=NMrKlQODzkDQJaPprNcSn9Rvbqf5A+/POzoH3D4n1W813fhul5RRasFE
 GAamivDpzHgF2iZCoYrJy4ZYGYE1PP9yJR21oXhxe8mSMcsuFBKqCBG5P
 7T4XIOZjRAnoCQouHgRTIRNFPEl5isLqnnnLwiSu0UawAad4eAPXu7TxP
 Vd8Ze576uiEPjZavwxV3wMfm9GJBIhUKW+5k4wXM5n6btxESnjdFKzyHs
 QI3fyRQQQXnUPUPxGSE7kLAyL6mgBZ64WBXylAT3K4SidqRpf6VN/qbXJ
 Z+RDkGszbjEuivAU61nVoEYqx6C0fBl++BRlbFdRS0PDJOETAzFsIgrz/
 Q==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=NMrKlQOD
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v2 07/15] ice: init marker
 and protocol group table for parser
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
Cc: "Zhang, Qi Z" <qi.z.zhang@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>



> -----Original Message-----
> From: Ivan Vecera <ivecera@redhat.com>
> Sent: Monday, July 24, 2023 19:02
> To: Guo, Junfeng <junfeng.guo@intel.com>; intel-wired-
> lan@lists.osuosl.org
> Cc: Zhang, Qi Z <qi.z.zhang@intel.com>; mschmidt
> <mschmidt@redhat.com>; poros <poros@redhat.com>
> Subject: Re: [Intel-wired-lan] [PATCH iwl-next v2 07/15] ice: init marker
> and protocol group table for parser
> 
> See inline comments...
> 
> On 05. 06. 23 7:46, Junfeng Guo wrote:
> > Parse DDP section ICE_SID_RXPARSER_MARKER_GRP into an array of
> > ice_mk_grp_item.
> > Parse DDP section ICE_SID_RXPARSER_PROTO_GRP into an array of
> > ice_proto_grp_item.
> >
> > Signed-off-by: Junfeng Guo <junfeng.guo@intel.com>
> > ---
> >   drivers/net/ethernet/intel/ice/ice_mk_grp.c   |  54 +++++++++
> >   drivers/net/ethernet/intel/ice/ice_mk_grp.h   |  14 +++
> >   drivers/net/ethernet/intel/ice/ice_parser.c   |  22 ++++
> >   drivers/net/ethernet/intel/ice/ice_parser.h   |   6 +
> >   .../net/ethernet/intel/ice/ice_proto_grp.c    | 105
> ++++++++++++++++++
> >   .../net/ethernet/intel/ice/ice_proto_grp.h    |  23 ++++
> >   6 files changed, 224 insertions(+)
> >   create mode 100644 drivers/net/ethernet/intel/ice/ice_mk_grp.c
> >   create mode 100644 drivers/net/ethernet/intel/ice/ice_mk_grp.h
> >   create mode 100644 drivers/net/ethernet/intel/ice/ice_proto_grp.c
> >   create mode 100644 drivers/net/ethernet/intel/ice/ice_proto_grp.h
> >
> > diff --git a/drivers/net/ethernet/intel/ice/ice_mk_grp.c
> b/drivers/net/ethernet/intel/ice/ice_mk_grp.c
> > new file mode 100644
> > index 000000000000..7068cfb832d6
> > --- /dev/null
> > +++ b/drivers/net/ethernet/intel/ice/ice_mk_grp.c
> > @@ -0,0 +1,54 @@
> > +// SPDX-License-Identifier: GPL-2.0
> > +/* Copyright (C) 2018-2023 Intel Corporation */
> > +
> > +#include "ice_common.h"
> > +#include "ice_parser_util.h"
> > +
> > +#define ICE_MK_GRP_TABLE_SIZE 128
> > +#define ICE_MK_COUNT_PER_GRP 8
> > +
> > +/**
> > + * ice_mk_grp_dump - dump an marker group item info
> > + * @hw: pointer to the hardware structure
> > + * @item: marker group item to dump
> > + */
> > +void ice_mk_grp_dump(struct ice_hw *hw, struct ice_mk_grp_item
> *item)
> > +{
> > +	int i;
> > +
> > +	dev_info(ice_hw_to_dev(hw), "index = %d\n", item->idx);
> > +	dev_info(ice_hw_to_dev(hw), "markers: ");
> > +	for (i = 0; i < ICE_MK_COUNT_PER_GRP; i++)
> > +		dev_info(ice_hw_to_dev(hw), "%d ", item->markers[i]);
> > +	dev_info(ice_hw_to_dev(hw), "\n");
> > +}
> > +
> > +static void _mk_grp_parse_item(struct ice_hw *hw, u16 idx, void
> *item,
> > +			       void *data, int size)
> 
> Please prefix also static local function names to avoid namespace
> pollution:
> 
> _mk_grp_parse_item -> ice_mk_grp_parse_item
> 
> This comment is also valid for another patches from this series..
> 

Sure, make sense! Will update in the coming version. Thanks!

> 
> > +{
> > +	struct ice_mk_grp_item *grp = item;
> > +	u8 *buf = data;
> > +	int i;
> > +
> > +	grp->idx = idx;
> > +
> > +	for (i = 0; i < ICE_MK_COUNT_PER_GRP; i++)
> > +		grp->markers[i] = buf[i];
> > +
> > +	if (hw->debug_mask & ICE_DBG_PARSER)
> > +		ice_mk_grp_dump(hw, grp);
> > +}
> > +
> > +/**
> > + * ice_mk_grp_table_get - create a marker group table
> > + * @hw: pointer to the hardware structure
> > + */
> > +struct ice_mk_grp_item *ice_mk_grp_table_get(struct ice_hw *hw)
> > +{
> > +	return (struct ice_mk_grp_item *)
> > +		ice_parser_create_table(hw,
> ICE_SID_RXPARSER_MARKER_GRP,
> > +					sizeof(struct ice_mk_grp_item),
> > +					ICE_MK_GRP_TABLE_SIZE,
> > +					ice_parser_sect_item_get,
> > +					_mk_grp_parse_item, false);
> > +}
> > diff --git a/drivers/net/ethernet/intel/ice/ice_mk_grp.h
> b/drivers/net/ethernet/intel/ice/ice_mk_grp.h
> > new file mode 100644
> > index 000000000000..3c6c340a2a9a
> > --- /dev/null
> > +++ b/drivers/net/ethernet/intel/ice/ice_mk_grp.h
> > @@ -0,0 +1,14 @@
> > +/* SPDX-License-Identifier: GPL-2.0 */
> > +/* Copyright (C) 2018-2023 Intel Corporation */
> > +
> > +#ifndef _ICE_MK_GRP_H_
> > +#define _ICE_MK_GRP_H_
> > +
> > +struct ice_mk_grp_item {
> > +	int idx;
> > +	u8 markers[8];
> > +};
> > +
> > +void ice_mk_grp_dump(struct ice_hw *hw, struct ice_mk_grp_item
> *item);
> > +struct ice_mk_grp_item *ice_mk_grp_table_get(struct ice_hw *hw);
> > +#endif /* _ICE_MK_GRP_H_ */
> > diff --git a/drivers/net/ethernet/intel/ice/ice_parser.c
> b/drivers/net/ethernet/intel/ice/ice_parser.c
> > index 970e379e074e..1185bf1cd249 100644
> > --- a/drivers/net/ethernet/intel/ice/ice_parser.c
> > +++ b/drivers/net/ethernet/intel/ice/ice_parser.c
> > @@ -13,6 +13,8 @@
> >   #define ICE_SID_RXPARSER_NOMATCH_SPILL_ENTRY_SIZE	13
> >   #define ICE_SID_RXPARSER_BOOST_TCAM_ENTRY_SIZE
> 	88
> >   #define ICE_SID_RXPARSER_MARKER_TYPE_ENTRY_SIZE
> 	24
> > +#define ICE_SID_RXPARSER_MARKER_GRP_ENTRY_SIZE
> 	8
> > +#define ICE_SID_RXPARSER_PROTO_GRP_ENTRY_SIZE
> 	24
> >
> >   #define ICE_SEC_LBL_DATA_OFFSET				2
> >   #define ICE_SID_LBL_ENTRY_SIZE				66
> > @@ -75,6 +77,12 @@ void *ice_parser_sect_item_get(u32 sect_type,
> void *section,
> >   	case ICE_SID_RXPARSER_MARKER_PTYPE:
> >   		size = ICE_SID_RXPARSER_MARKER_TYPE_ENTRY_SIZE;
> >   		break;
> > +	case ICE_SID_RXPARSER_MARKER_GRP:
> > +		size = ICE_SID_RXPARSER_MARKER_GRP_ENTRY_SIZE;
> > +		break;
> > +	case ICE_SID_RXPARSER_PROTO_GRP:
> > +		size = ICE_SID_RXPARSER_PROTO_GRP_ENTRY_SIZE;
> > +		break;
> >   	default:
> >   		return NULL;
> >   	}
> > @@ -218,6 +226,18 @@ int ice_parser_create(struct ice_hw *hw,
> struct ice_parser **psr)
> >   		goto err;
> >   	}
> >
> > +	p->mk_grp_table = ice_mk_grp_table_get(hw);
> > +	if (!p->mk_grp_table) {
> > +		status = -EINVAL;
> > +		goto err;
> > +	}
> > +
> > +	p->proto_grp_table = ice_proto_grp_table_get(hw);
> > +	if (!p->proto_grp_table) {
> > +		status = -EINVAL;
> > +		goto err;
> > +	}
> > +
> >   	*psr = p;
> >   	return 0;
> >   err:
> > @@ -240,6 +260,8 @@ void ice_parser_destroy(struct ice_parser *psr)
> >   	devm_kfree(ice_hw_to_dev(psr->hw), psr->bst_tcam_table);
> >   	devm_kfree(ice_hw_to_dev(psr->hw), psr->bst_lbl_table);
> >   	devm_kfree(ice_hw_to_dev(psr->hw), psr-
> >ptype_mk_tcam_table);
> > +	devm_kfree(ice_hw_to_dev(psr->hw), psr->mk_grp_table);
> > +	devm_kfree(ice_hw_to_dev(psr->hw), psr->proto_grp_table);
> >
> >   	devm_kfree(ice_hw_to_dev(psr->hw), psr);
> >   }
> > diff --git a/drivers/net/ethernet/intel/ice/ice_parser.h
> b/drivers/net/ethernet/intel/ice/ice_parser.h
> > index 1474a2337ad3..3f17b15a1381 100644
> > --- a/drivers/net/ethernet/intel/ice/ice_parser.h
> > +++ b/drivers/net/ethernet/intel/ice/ice_parser.h
> > @@ -9,6 +9,8 @@
> >   #include "ice_pg_cam.h"
> >   #include "ice_bst_tcam.h"
> >   #include "ice_ptype_mk.h"
> > +#include "ice_mk_grp.h"
> > +#include "ice_proto_grp.h"
> >
> >   struct ice_parser {
> >   	struct ice_hw *hw; /* pointer to the hardware structure */
> > @@ -31,6 +33,10 @@ struct ice_parser {
> >   	struct ice_lbl_item *bst_lbl_table;
> >   	/* load data from section ICE_SID_RXPARSER_MARKER_PTYPE */
> >   	struct ice_ptype_mk_tcam_item *ptype_mk_tcam_table;
> > +	/* load data from section ICE_SID_RXPARSER_MARKER_GRP */
> > +	struct ice_mk_grp_item *mk_grp_table;
> > +	/* load data from section ICE_SID_RXPARSER_PROTO_GRP */
> > +	struct ice_proto_grp_item *proto_grp_table;
> >   };
> >
> >   int ice_parser_create(struct ice_hw *hw, struct ice_parser **psr);
> > diff --git a/drivers/net/ethernet/intel/ice/ice_proto_grp.c
> b/drivers/net/ethernet/intel/ice/ice_proto_grp.c
> > new file mode 100644
> > index 000000000000..781adbda0851
> > --- /dev/null
> > +++ b/drivers/net/ethernet/intel/ice/ice_proto_grp.c
> > @@ -0,0 +1,105 @@
> > +// SPDX-License-Identifier: GPL-2.0
> > +/* Copyright (C) 2018-2023 Intel Corporation */
> > +
> > +#include "ice_common.h"
> > +#include "ice_parser_util.h"
> > +
> > +static void _proto_off_dump(struct ice_hw *hw, struct ice_proto_off
> *po,
> > +			    int idx)
> > +{
> > +	dev_info(ice_hw_to_dev(hw), "proto %d\n", idx);
> > +	dev_info(ice_hw_to_dev(hw), "\tpolarity = %d\n", po->polarity);
> > +	dev_info(ice_hw_to_dev(hw), "\tproto_id = %d\n", po->proto_id);
> > +	dev_info(ice_hw_to_dev(hw), "\toffset = %d\n", po->offset);
> > +}
> > +
> > +/**
> > + * ice_proto_grp_dump - dump a proto group item info
> > + * @hw: pointer to the hardware structure
> > + * @item: proto group item to dump
> > + */
> > +void ice_proto_grp_dump(struct ice_hw *hw, struct
> ice_proto_grp_item *item)
> > +{
> > +	int i;
> > +
> > +	dev_info(ice_hw_to_dev(hw), "index = %d\n", item->idx);
> > +
> > +	for (i = 0; i < ICE_PROTO_COUNT_PER_GRP; i++)
> > +		_proto_off_dump(hw, &item->po[i], i);
> > +}
> > +
> > +/** The function parses a 22 bits Protocol entry with below format:
> > + *  BIT 0:	Polarity of Protocol Offset (po->polarity)
> > + *  BIT 1-8:	Protocol ID (po->proto_id)
> > + *  BIT 9-11:	reserved
> > + *  BIT 12-21:	Protocol Offset (po->offset)
> > + */
> > +static void _proto_off_parse(struct ice_proto_off *po, u32 data)
> > +{
> > +	po->polarity = (data & 0x1) != 0;
> > +	po->proto_id = (u8)((data >> 1) & 0xff);
> > +	po->offset = (u16)((data >> 12) & 0x3ff);
> > +}
> > +
> > +/** The function parses a 192 bits Protocol Group Table entry with
> below
> > + *  format:
> > + *  BIT 0-21:	Protocol 0 (grp->po[0])
> > + *  BIT 22-43:	Protocol 1 (grp->po[1])
> > + *  BIT 44-65:	Protocol 2 (grp->po[2])
> > + *  BIT 66-87:	Protocol 3 (grp->po[3])
> > + *  BIT 88-109:	Protocol 4 (grp->po[4])
> > + *  BIT 110-131:Protocol 5 (grp->po[5])
> > + *  BIT 132-153:Protocol 6 (grp->po[6])
> > + *  BIT 154-175:Protocol 7 (grp->po[7])
> > + *  BIT 176-191:reserved
> > + */
> > +static void _proto_grp_parse_item(struct ice_hw *hw, u16 idx, void
> *item,
> > +				  void *data, int size)
> > +{
> > +	struct ice_proto_grp_item *grp = item;
> > +	u8 *buf = data;
> > +	u32 d32;
> > +
> > +	grp->idx = idx;
> > +
> > +	d32 = *(u32 *)buf;
> > +	_proto_off_parse(&grp->po[0], d32);
> > +
> > +	d32 = (*(u32 *)&buf[2] >> 6);
> > +	_proto_off_parse(&grp->po[1], d32);
> > +
> > +	d32 = (*(u32 *)&buf[5] >> 4);
> > +	_proto_off_parse(&grp->po[2], d32);
> > +
> > +	d32 = (*(u32 *)&buf[8] >> 2);
> > +	_proto_off_parse(&grp->po[3], d32);
> > +
> > +	d32 = *(u32 *)&buf[11];
> > +	_proto_off_parse(&grp->po[4], d32);
> > +
> > +	d32 = (*(u32 *)&buf[13] >> 6);
> > +	_proto_off_parse(&grp->po[5], d32);
> > +
> > +	d32 = (*(u32 *)&buf[16] >> 4);
> > +	_proto_off_parse(&grp->po[6], d32);
> > +
> > +	d32 = (*(u32 *)&buf[19] >> 2);
> > +	_proto_off_parse(&grp->po[7], d32);
> > +
> > +	if (hw->debug_mask & ICE_DBG_PARSER)
> > +		ice_proto_grp_dump(hw, grp);
> > +}
> > +
> > +/**
> > + * ice_proto_grp_table_get - create a proto group table
> > + * @hw: pointer to the hardware structure
> > + */
> > +struct ice_proto_grp_item *ice_proto_grp_table_get(struct ice_hw
> *hw)
> > +{
> > +	return (struct ice_proto_grp_item *)
> > +		ice_parser_create_table(hw,
> ICE_SID_RXPARSER_PROTO_GRP,
> > +					sizeof(struct
> ice_proto_grp_item),
> > +					ICE_PROTO_GRP_TABLE_SIZE,
> > +					ice_parser_sect_item_get,
> > +					_proto_grp_parse_item, false);
> > +}
> > diff --git a/drivers/net/ethernet/intel/ice/ice_proto_grp.h
> b/drivers/net/ethernet/intel/ice/ice_proto_grp.h
> > new file mode 100644
> > index 000000000000..eb380489478e
> > --- /dev/null
> > +++ b/drivers/net/ethernet/intel/ice/ice_proto_grp.h
> > @@ -0,0 +1,23 @@
> > +/* SPDX-License-Identifier: GPL-2.0 */
> > +/* Copyright (C) 2018-2023 Intel Corporation */
> > +
> > +#ifndef _ICE_PROTO_GRP_H_
> > +#define _ICE_PROTO_GRP_H_
> > +
> > +#define ICE_PROTO_COUNT_PER_GRP 8
> > +#define ICE_PROTO_GRP_TABLE_SIZE 192
> > +
> > +struct ice_proto_off {
> > +	bool polarity; /* true: positive, false: nagtive */
> > +	u8 proto_id;
> > +	u16 offset;
> > +};
> > +
> > +struct ice_proto_grp_item {
> > +	u16 idx;
> > +	struct ice_proto_off po[ICE_PROTO_COUNT_PER_GRP];
> > +};
> > +
> > +void ice_proto_grp_dump(struct ice_hw *hw, struct
> ice_proto_grp_item *item);
> > +struct ice_proto_grp_item *ice_proto_grp_table_get(struct ice_hw
> *hw);
> > +#endif /* _ICE_PROTO_GRP_H_ */

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
