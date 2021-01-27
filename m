Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id C5691306801
	for <lists+intel-wired-lan@lfdr.de>; Thu, 28 Jan 2021 00:37:31 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 5C9A286381;
	Wed, 27 Jan 2021 23:37:30 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id DZ32xQ8xdvHK; Wed, 27 Jan 2021 23:37:29 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 4807586329;
	Wed, 27 Jan 2021 23:37:29 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 84F681BF3B1
 for <intel-wired-lan@lists.osuosl.org>; Wed, 27 Jan 2021 23:37:27 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 8036C8630F
 for <intel-wired-lan@lists.osuosl.org>; Wed, 27 Jan 2021 23:37:27 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id tgBfPQK17B88 for <intel-wired-lan@lists.osuosl.org>;
 Wed, 27 Jan 2021 23:37:26 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 8F85086303
 for <intel-wired-lan@lists.osuosl.org>; Wed, 27 Jan 2021 23:37:26 +0000 (UTC)
IronPort-SDR: PwN3RwqH49kINRGhVPcwoeZs7X08as4mUN5g5lAWFc2CkqJMqLXkGfvmYosTGWmegeDwYP+wYd
 rHnb4jT0+6Gw==
X-IronPort-AV: E=McAfee;i="6000,8403,9877"; a="241679690"
X-IronPort-AV: E=Sophos;i="5.79,380,1602572400"; d="scan'208";a="241679690"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Jan 2021 15:37:24 -0800
IronPort-SDR: 1oziPyHG2zE6Zi7zud5Vrofy3i0z+ZlxxCVh5vQeBLo91RrQXJg29yNCRbx7d7QhAXpGZFGIgK
 E3GaPbwR9g2A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.79,380,1602572400"; d="scan'208";a="403268592"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by fmsmga004.fm.intel.com with ESMTP; 27 Jan 2021 15:37:23 -0800
Received: from fmsmsx607.amr.corp.intel.com (10.18.126.87) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2106.2; Wed, 27 Jan 2021 15:37:22 -0800
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx607.amr.corp.intel.com (10.18.126.87) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2106.2
 via Frontend Transport; Wed, 27 Jan 2021 15:37:22 -0800
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (104.47.59.177)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.1713.5; Wed, 27 Jan 2021 15:37:22 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Bs4/4Gy0TU4+wXEjNb3FgnD/cmLaJuuHY3LnjtMYOzOc0LqV/WsMyjdoPfGQaIfu1pHjWOlT0wLYlAeNkdHnpW4XzpaEaZPhrqXS3IkinV0zVu7SBaUiEfOyrgb6eqjR2OPZW5bXPhQCPxWTvaaRunqc4ZKTiWJgqG0qXb6UwciZFw81VEwPXhP3mzYYxKehMZSaZc5L0+mOAXwbcfogsOfMplGz7ZorI51JIz+Cv40HCYLek7eU87rXyWB1vMyRrymAI44ontrUShIjS+1TXSKh8E42GJWutBXxnW0vwvD9f9caMTeHBgBRo+e+/oMJ9GKJzVXcChIP6Ro4tKOUnA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=ZwfjnP2hMBNEc06JXfbcnLSHqnj2glmjq4vjeMMgRFw=;
 b=Uz1RgC59/HwVEDVlnLKAs6IgEYP+fwuEcSIL3Unq/LfFpNi+Y/2nm5v4l3TIMw5oCY89x+LFtywbR4qh1Fwxb71Vm0Y4HqZ3e12AyW9QVqt3Xfk9dW4hfDk/T6HWbtK9C6H2cm1TJxotulnYPkEq+Wen+A7dHZ1o9Z04XAZ/6s9Jf7Bic+mVSZ7gNjVdzAdRuZQXogZo8GFFduf509cHCcLZMgwveg2e6/dsJnefbBPpd1eAgW0zGGAGWRpMD46XJ81tMule1Tg18R9G0YuwWQHM29ztV8soi2ukcPYFMGId0uAcxGQ1pq0a3GMurWTSGAgR+IgoAfwAliFr8Z7Glw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=ZwfjnP2hMBNEc06JXfbcnLSHqnj2glmjq4vjeMMgRFw=;
 b=XYKLUaK6y9Eg7AdyR1LGpjOJSpvjKXLAKLAm7PA0szgaUYqNtbsrGz8IdfiRICfeaNZz6hj2Nt0jtDa7GahXmh3wT5n1uSuZfywObeIqanFtm38c0jXrcx6Vul5aLt7rMmFVQOvxL4aAAZPsf9nOuJTFpmpvIA6VdQ0j1fEpl9M=
Received: from SN6PR11MB3229.namprd11.prod.outlook.com (2603:10b6:805:ba::28)
 by SA2PR11MB4811.namprd11.prod.outlook.com (2603:10b6:806:11d::17)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3784.15; Wed, 27 Jan
 2021 23:37:21 +0000
Received: from SN6PR11MB3229.namprd11.prod.outlook.com
 ([fe80::fc53:e004:bade:6bc6]) by SN6PR11MB3229.namprd11.prod.outlook.com
 ([fe80::fc53:e004:bade:6bc6%6]) with mapi id 15.20.3784.019; Wed, 27 Jan 2021
 23:37:21 +0000
From: "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>
To: "kuba@kernel.org" <kuba@kernel.org>, "davem@davemloft.net"
 <davem@davemloft.net>, "wangyunjian@huawei.com" <wangyunjian@huawei.com>
Thread-Topic: [Intel-wired-lan] [PATCH net-next] ice: remove redundant null
 check on pf
Thread-Index: AQHW9KK4OZfxSRdhJEKsu6nPVbRSvao8IXAA
Date: Wed, 27 Jan 2021 23:37:21 +0000
Message-ID: <f8a08a517fbe6977c1777c77067d800d0bbbc9ad.camel@intel.com>
References: <1611748244-20592-1-git-send-email-wangyunjian@huawei.com>
In-Reply-To: <1611748244-20592-1-git-send-email-wangyunjian@huawei.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-mailer: Evolution 3.28.5 (3.28.5-3.fc28) 
authentication-results: kernel.org; dkim=none (message not signed)
 header.d=none;kernel.org; dmarc=none action=none header.from=intel.com;
x-originating-ip: [134.134.136.204]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 94d66a9d-9a17-4192-26a1-08d8c31c7e41
x-ms-traffictypediagnostic: SA2PR11MB4811:
x-microsoft-antispam-prvs: <SA2PR11MB48117326023EC0CE68296FABC6BB9@SA2PR11MB4811.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:7219;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: yNHbbVcSV1ZKyFA6ra99QOwMvKq5yZQVx/jZrcTU+5LXIcu/rJsmGccZXhR5dvumuXynmTUGJPnlm4VX608ZN1Se7+4oOL7kZbnvuZYVbGwEEs/yWsWN/pGyNYfSH+W1FW4kdWgo3JaIG7mbSm255N7JynfebX8Vpdhw5L9BrON93J0DIOrfFSerhbN/7umEOFb4sEEEjYUUCeZqzDESFC/AMDMQbNH6jyihl9WjwKiL69MsDjqConYkUohxJO2WDrhPIvtTUCeSkzj1sXkIjOfvIf3oyXwyxtPA7wSwcGKsl0Q70n26tDmm9QAnxglESIgnErIxnsUHUXRUoa92Sh8DaUvKDj5hsJVLOd33R9FIjTluAKtrx4CHh56iLiR/M2m8vbb4EgirFxPbwryZ4IXeF8sNNiCpjN4bQA7ew5fsK1ShfktNTAzizufmgOm2BgZNCEwALUx4SKEu2ge8Ru2hHoYKGD7Gb1K9lO1YFfi2spRjrW7g73qCDFGYw+KLBxEEy7xcizJV71dgcRrJ4cc8mTSzYXsbv1PfHPYv5hLy5zArIG6k1AqbrRKdSEtrb3LRWrGoisIpJHkVe5Q+WF9wlPP+vCJgwrt7o8pf3u6dBkfZdKf0rNS12P2pg+FsM4U+kK2xsC734czB7+zXTA==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN6PR11MB3229.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(4636009)(366004)(346002)(39860400002)(376002)(136003)(396003)(8676002)(76116006)(64756008)(5660300002)(86362001)(66476007)(966005)(36756003)(8936002)(66446008)(316002)(54906003)(66946007)(91956017)(6512007)(66556008)(71200400001)(6506007)(2906002)(478600001)(26005)(4744005)(6486002)(4326008)(2616005)(186003)(110136005)(99106002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata: =?utf-8?B?b1BNaVNmMWtqMGoyc0ZNc3hxbmpVZ2ZiRmRWL01DVWZLcjlJSGNaTkZOQmlz?=
 =?utf-8?B?M0FwVUZLZGVGeXVvTERpYWxWSThKNnMzdnBLdExQRk9KallyRkdzVXdGbzRy?=
 =?utf-8?B?c1kvdXZtYVlXOUJmcDJYRFR2Y1J2bTJzUlkwbXVkNzRMa3VPSndRVXVYNFky?=
 =?utf-8?B?b1h3QUVRaGFBWDlrQkVjWnhzZU9vTmhuOFFVbm1CNkpkRDRZZHFUSGdtazQ4?=
 =?utf-8?B?b241MDBsdVF2TTNjeXJialdZZmZReUFNNzA3VXNhZUVoOHI3TzRKbTc0Z09L?=
 =?utf-8?B?NFhXT0EwUk54VDA2QnMwM3NIOS9zc3VmT3JrdXZRNmFldG94UDJ0VFozdnpD?=
 =?utf-8?B?WWV6YmhFSXU2dktJRVgwaE1ub05KMnFLdWRNbmZNRk44UWdpb0dHYmx1M2JF?=
 =?utf-8?B?L0tZTzF3S2V3RWNSVmdsWkNTTjdUSjFDU3V6cWFNSklJQ0x2NEFWRS9VaHor?=
 =?utf-8?B?cnoxUXJtS0RiY2swOUZEZGNocVcxMmtMa1VpbVNaM0JUZWgydVNMQlFiR1pv?=
 =?utf-8?B?T1lMNVI3UVYwM1JTTmdRdTZ5V28vSlhGQnZlajRWaG1Yd2Rka3dLZGowaDNR?=
 =?utf-8?B?QldNMzBKVXIzWDc1UW5HSzFEcWZjR0J4d1gvbkduZlV0WlBHRTJmZ3U5WVpy?=
 =?utf-8?B?MjJsQUx4VFF1QVkzWkZYbmY0S3NKUnp3OEhnemZoRUpXYnVIdHB3QzlmVnlV?=
 =?utf-8?B?bFV5N1cvNC9qWUdtUjZ1dHFXWTNKazdYMVRwWTQ3dXpyVjRQcUplZ2xybHJR?=
 =?utf-8?B?Wmx0MkpFbTNONFVFTFRyZ045ZlhkcWFBSmh5Q3JMd3Qva0I4c1A5bk4yK0dF?=
 =?utf-8?B?bEtNTXpjRVA3Q3hOcEpGcVhRMlhOZHE0L0JTWXZvWDFtc1cwTW1rV1ZLM2p3?=
 =?utf-8?B?Vkpxa1dYMTdBdlBMeTIzY1FEZWtrYjRTMnlSSy9QRVlFY1VEY1VJTDR5TkR4?=
 =?utf-8?B?V2lQQjJFbzZHM1JnbXBGdVUrMDhSaGw1U0ZDaE1LYi9XdzRHajMrakJQSm1J?=
 =?utf-8?B?aGVVZ0pjaEl0ZnJFV3ZzNUZMaEFuaGNXa2ViOGpWZ3IybVZlMjRqT3pHdUNz?=
 =?utf-8?B?cy9zR0J3bjV3d09GVHAzMGZiZHVFV1RkY1gvOUZtR042ZlNjS29PcExhMzVQ?=
 =?utf-8?B?Q0VvcE1ZZ0JmRE5BUjBnRjFlSTlhVENFK2ZpQmZMd3kwc0ZCSzBPVTFPamd5?=
 =?utf-8?B?UHV6UHBlb0MzdGozc3JxaUNlMVV3aWpSZlQ2TnlvS3d2U2tYYlBZUDlIOElO?=
 =?utf-8?B?M21tWWV1RnUybXIvRW42RUltejB2dk5wdTM3Zys2dVFYa3dERjdyTlBhTUJp?=
 =?utf-8?B?emRpMHFiWW16cjJ4NjlDUno5Q1orTjNxaVJBK2dlSDRHMUNqc0dJK3dDQ1pT?=
 =?utf-8?B?dXhqQXFuS0R5VHJRbHpjT0tmL0NYbHZaQVV6Y1JuWVlTbmFwZ0dyZHpDY3hN?=
 =?utf-8?B?dHFDTVFmQzdWaFpncjhjTTkxN1pybUplZTRodlhnPT0=?=
x-ms-exchange-transport-forked: True
Content-ID: <074A4F30B8F8A245A7A5700A3885BB96@namprd11.prod.outlook.com>
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SN6PR11MB3229.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 94d66a9d-9a17-4192-26a1-08d8c31c7e41
X-MS-Exchange-CrossTenant-originalarrivaltime: 27 Jan 2021 23:37:21.6115 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: btgjMsqcCrlogftAp1pZ0MROzrU80KvYlCR7Zzm3tD+76ku0zvkLvyOc3RUmYNtr+5o6uz0gLNCJ2M320P/yJDqW7MiiBD0nbLJ5NnFj9Os=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA2PR11MB4811
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [PATCH net-next] ice: remove redundant null
 check on pf
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
Cc: "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "jerry.lilijun@huawei.com" <jerry.lilijun@huawei.com>,
 "xudingke@huawei.com" <xudingke@huawei.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Wed, 2021-01-27 at 19:50 +0800, wangyunjian wrote:
> From: Yunjian Wang <wangyunjian@huawei.com>
> 
> Before calling ice_set_dflt_mib(), the 'pf' has been dereferenced.
> So the additional check is unnecessary, just remove it.
> 
> Addresses-Coverity: ("Dereference before null check")
> Fixes: 7d9c9b791f9e ("ice: Implement LFC workaround")
> Signed-off-by: Yunjian Wang <wangyunjian@huawei.com>
> ---

Thanks for the patch Yunjian. However, we do have a patch coming[1]
that fixes this issue.

Thanks,
Tony

[1] https://patchwork.ozlabs.org/project/intel-wired-
lan/patch/20201012225326.15722-1-anthony.l.nguyen@intel.com/
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
