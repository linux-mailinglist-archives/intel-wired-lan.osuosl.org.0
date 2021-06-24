Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id D7DE93B33B5
	for <lists+intel-wired-lan@lfdr.de>; Thu, 24 Jun 2021 18:15:13 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 6B38260BF1;
	Thu, 24 Jun 2021 16:15:12 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id nppFvNPmtWIw; Thu, 24 Jun 2021 16:15:11 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 504C560BC7;
	Thu, 24 Jun 2021 16:15:11 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id A6F2B1BF35F
 for <intel-wired-lan@lists.osuosl.org>; Thu, 24 Jun 2021 16:15:06 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 9593583DB0
 for <intel-wired-lan@lists.osuosl.org>; Thu, 24 Jun 2021 16:15:06 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp1.osuosl.org (amavisd-new);
 dkim=pass (1024-bit key) header.d=intel.onmicrosoft.com
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id LRf-XhNeNKh7 for <intel-wired-lan@lists.osuosl.org>;
 Thu, 24 Jun 2021 16:15:05 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 16F0483DAF
 for <intel-wired-lan@lists.osuosl.org>; Thu, 24 Jun 2021 16:15:04 +0000 (UTC)
IronPort-SDR: Nn6sXghykO/y201IkFG/YE0FWALmjM/kuii5c0hgdQQm3rFd3AC6cCP1ITdr0xvBRoIa8XH90r
 20JuLD3YKnMg==
X-IronPort-AV: E=McAfee;i="6200,9189,10025"; a="187193755"
X-IronPort-AV: E=Sophos;i="5.83,296,1616482800"; d="scan'208";a="187193755"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Jun 2021 09:15:03 -0700
IronPort-SDR: d50owVbb8rVs+6NiHqJ/wjaeJoyrcJM2u9xi9HNSL+ilW5fxJPaHvY3MeI3U9yay0evHnOVsuP
 MNY0OXzlmIGQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.83,296,1616482800"; d="scan'208";a="406694666"
Received: from fmsmsx604.amr.corp.intel.com ([10.18.126.84])
 by orsmga006.jf.intel.com with ESMTP; 24 Jun 2021 09:15:02 -0700
Received: from fmsmsx608.amr.corp.intel.com (10.18.126.88) by
 fmsmsx604.amr.corp.intel.com (10.18.126.84) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.4; Thu, 24 Jun 2021 09:15:02 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx608.amr.corp.intel.com (10.18.126.88) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2242.4
 via Frontend Transport; Thu, 24 Jun 2021 09:15:02 -0700
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.46) by
 edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2242.4; Thu, 24 Jun 2021 09:15:02 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=nGquiz18drfUTj+XLPZryWtP62F7Tu75H7GIRPRh2lQYgBONRJya7MF/vP1NwtyLrYJamZ+HAJei05Y74rhVefuQdUlCVGe4Zfihd/iYzGCUUi/1FVgWar/bj6uTiZRdiO5Jbcy4wpkoX/A9UE/VXwucNv8NEuh2RsA0KX8P4nl9UM5nDHQWgWivSN8a2abtfTp9mYYu7TtQnvPAsyN8MuSApKaYbip1yCzmKuxHXayMqCYLFMWB5xoC06LL9BJ65yfqEvXbNhv3KnaaYZVVuCPutgri3bkTGWUlfZtt4VRNfSJyXTWmZPq4x1OZso01ktDhdE8Q9dOuq4PKlhVzEA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Fei6Rjj3v9d8wnEiw5Rb8/zkukQBi2fmXvO9H91vhK8=;
 b=N10fdjp4jhkLoSMjcFjWaYPCR+Wft9dbWWqBGVSuHGnc8EQ6GR3KX7MAt4BSXI4irtDlFy5iSTQuGaB/XA9pwVco9nuKKtXBbej0L9j1AIrp6UkgZVwIg6xyApsGMIBgTY36XhBnxxIzFgslcR9kp4eDevUafYzSzI1zsiDLo1k/NS8mML5ew7cL80kk+e0yPoIuFFg2jD0gqVrVV/joYxnO9sJeQ/wDVNprww4HTfeHzVAwiTiXsKGU78HmC+/NxEOmAyizcD6NG5Q0XFXGyTeHPz3t//iGQyghf1+rDtem4gCyWxEY2YGxqCI3wHq0xLBvd02UQayg9fKHcpZ1KA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Fei6Rjj3v9d8wnEiw5Rb8/zkukQBi2fmXvO9H91vhK8=;
 b=LsUcd2QtLF5b4TIuaSdkL18EPylFaEIx/ORZcPGnzNHZN+8/83AaPJHj87orGd2b4l0/HJWM04zl2AjxT+j9Gn6MgD+b+tTqw2pXyh8mIW9oDzM6a1a1fK3HXFCQ/MXjDfBrVsSqx3nxAqbsAXmv4RShy7KBk5dnT96A1LERva4=
Received: from SN6PR11MB3229.namprd11.prod.outlook.com (2603:10b6:805:ba::28)
 by SA2PR11MB4921.namprd11.prod.outlook.com (2603:10b6:806:115::14)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4264.20; Thu, 24 Jun
 2021 16:15:01 +0000
Received: from SN6PR11MB3229.namprd11.prod.outlook.com
 ([fe80::15ab:e6bc:fd6e:2a1]) by SN6PR11MB3229.namprd11.prod.outlook.com
 ([fe80::15ab:e6bc:fd6e:2a1%5]) with mapi id 15.20.4264.018; Thu, 24 Jun 2021
 16:15:01 +0000
From: "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>
To: "Palczewski, Mateusz" <mateusz.palczewski@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH net v1] iavf: Fix ping is lost after
 untrusted VF had tried to change MAC
Thread-Index: AQHXaDECOfvBuh9bEUupA2DXWgXKu6sjWJQA
Date: Thu, 24 Jun 2021 16:15:01 +0000
Message-ID: <7e07a24f8f62dc8edc618a7944c8481278b20b55.camel@intel.com>
References: <20210623130842.9956-1-mateusz.palczewski@intel.com>
In-Reply-To: <20210623130842.9956-1-mateusz.palczewski@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Evolution 3.36.5 (3.36.5-2.fc32) 
authentication-results: intel.com; dkim=none (message not signed)
 header.d=none;intel.com; dmarc=none action=none header.from=intel.com;
x-originating-ip: [134.134.136.219]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 14413fea-5965-49e5-487d-08d9372b380a
x-ms-traffictypediagnostic: SA2PR11MB4921:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <SA2PR11MB49218414C9B221BFDEA1928EC6079@SA2PR11MB4921.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:8882;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 1qK2GmTPaGJPsBMH2sHcnk3lj5yDsN+8en9nxsYVQTen/03kR4v+GaoH+HDK2fsOEJgo7v+bdQcTnxSup4uqiJ3WXipSeoAsn+OnZj7WurKhlJzlxiCZUJny8cwP+XBPMV8cg6ZXgBaNFEo0ww0r5v+r/nMT2HbhWZOIEC/LOaaVdwuRs7amQr/RBKS7YIkIjXV7FLYqgvhAHSGMhdwDS4yK5pGBj4g7Shlx0oZkaERwwUq0OdP0a9ViHeLLM9KCaBwgAYKKe8bbqN/6zR9/KYm58ESXIUaIdO2nXvaQVmH4b9Pq8YUh+JgYoKdi0mry31r+Q4gtJIRaHrD905lIyoLURgq8BYnb+wnFHTOOvQqgDlikHHwpimh6DYoD6WgTWjHjdzs4JRkkt6RCwxZvuXXmfddD99ib06Ofg+45G4hRgKYrM7Zh2iyxlhV9NV4GVqYE1R+fxuZzbmXQ46ViKvuvqy1FW67xNpOHmvJdRNLAGFnsPGaKC23hcHr/YSBbCveoWoczWy4HY+jZ4AMDU7sa+TAsL6+RRfINHERSNNAH3qUe1cFc2T222rw3tN8B35edRm52GigQOt5loYJB3T0sDanPCG4OD0UDwcBJsOg=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN6PR11MB3229.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(136003)(396003)(376002)(39860400002)(346002)(366004)(316002)(5660300002)(66446008)(64756008)(66556008)(66476007)(36756003)(6486002)(91956017)(76116006)(26005)(6506007)(4326008)(66946007)(186003)(2906002)(122000001)(38100700002)(71200400001)(110136005)(54906003)(8676002)(478600001)(8936002)(83380400001)(107886003)(86362001)(6512007)(2616005);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?MGJGRERvUnIwbjdhNWRuTW5ORStSUHZrTkFGak5VRzZoL3ZzcUlzY1REbTJo?=
 =?utf-8?B?WTVWT2xIN3lSMWtFWWxuSW5SVk1zU1BSS1lBTG9xbktmVzJmTm1zMlBpZXVk?=
 =?utf-8?B?QTFSVnFXdmNUdllaa1laRWhhbGtkQVZGR0VnVkdWRHJDWW1Lclc3UVhhaFRh?=
 =?utf-8?B?WmNoTG13Q3NHWDlHK0ZQSWYycjl6MDM1R3RUVVBRYnhlaFkra08rSWQrZUdP?=
 =?utf-8?B?Rm5zOGQxcE00OXh5Yy81U2JmZllpVVlVRjNxc0pRR1Y2UjA2MFQrUVdpdm9Q?=
 =?utf-8?B?MWdXU0RKNldmVDZlb0JvV2NFMmVOVE1vTmtxcWt1dUpPWW5HbXZFZWJoNUtu?=
 =?utf-8?B?OVZMLy80Y0ZDSEx0Y0YvM2lYU3FKVkJwNTVhV04rczVoQjVNRkxXd3ZHcEc5?=
 =?utf-8?B?bmZyajFuYlhGek5aR0Z4Z1B4eUNXeWZlTTF6R3htdjVLanNHQ2d3STJ3Wm16?=
 =?utf-8?B?SEZialBvbFpyUGVGRzM4aVdmN09uT1Vsb1dCMVJadkg5RXowVmt3U3g0YmFz?=
 =?utf-8?B?bUtNbFVKYjNZS0oxK3JiNEdSb2JDc3U2bTNLR1BLaHgzZWpyWFlaelpHSTFZ?=
 =?utf-8?B?dDYyS3NGN0ljMExXN3g3WFovUFhUeDYvRmxPL2N4SHNzUXpnVm9FUGpiOEJv?=
 =?utf-8?B?N015MktuUk9Nek1EK3RadlVFcWtrQXhNZFJZTEdYQ1R4dzBqc3MxQkdmNW1i?=
 =?utf-8?B?R1dadUQ5ZXZpdW5FaVJnRTl2aUU2L2hhWmozdDFqZjFjNjZJSnpZL2Fhc2JE?=
 =?utf-8?B?SEovZEFLYXJ4RDBQOEdzRmJiOUNKbnpwZDJKVFhtZHVIeVUwRFR0TmUzWUFC?=
 =?utf-8?B?KytjNzlEbGhrSllQTUREQW1yV2ZLbkVaRTUrUnc5UGlNdzlBTFdmN3k4RlpY?=
 =?utf-8?B?dU5iRnpwWXZwYnZ6TkU5TWxrSkd4R1lacFdGa1o1enVmNkpOUXZGOTdNOHM0?=
 =?utf-8?B?cTNSZytkY2ZtVzAwYWlQVDBlU0NNRWZ4dzdVa2R2RHNLRVZ1S3ZTL3VLNWhC?=
 =?utf-8?B?ektJU2JXK1RJQWxrRUdrYmVhdlRsb2dnRGlERzNBN2wwZ1lnQ0s0d2tCNzFM?=
 =?utf-8?B?L0tCQ2pxWEpCVXB6U2Y2UzE1ZkEyZVBPaUg4RkFtdlNvR2h6Vmd0akpTL2Ez?=
 =?utf-8?B?eUt4ZUJuZ3Nkby9SLzJzNGdsR25GcmxjVHBRY3NxT3NFc1FwYnRld2w5dlFD?=
 =?utf-8?B?NFBOcjNFY1hUeWxCS2FobzhXcTZQL1ViU2ZUSTM0THcvRHhlais0NDlFTGpP?=
 =?utf-8?B?L2Y4Y1dacGRxNE1vY2ZZU2V2MFR0MzhKMnJLVTg0YklCdWd0UzNneDcwcFgy?=
 =?utf-8?B?TjVYV1ltd3VnMVlSU1o1d1FBaXFkYy9yY0R2cm5OdVZ5MjNrRDczNVJ4RDkv?=
 =?utf-8?B?dkdEcmVNNkVsSW1GOTdzQWVSS094QjNweXY3dmoyTUhiK1RpWk5PaUZZQkZs?=
 =?utf-8?B?bzAwYVJWditCVmZTUE5ybXo1Wk1ha3JRL3ljYS9kaUJpTmlYUEZSS21XSUpV?=
 =?utf-8?B?RTBaR1REM1lzOWxxUVNpaVJQNmJYN3d1M3YybmNFcXhpaVhJREZ0ZG9FRlp1?=
 =?utf-8?B?ZVZObGt1TXpFdDlPV3p3TTAvcUZmZ2lzdW9ZZDRteDJiTHR6V0tUU1lBaWFt?=
 =?utf-8?B?cjMzQy9tcUpZWGVTMTl2OU9GLzNsbXBtNUZOek5WbXk4akFXWlV4dDhub3Yx?=
 =?utf-8?B?L2hLdVBlVnRzVXlmbnk0R0daZ25EQnErQy9DNWxBUERNbE1wUXA0dXFoMGd0?=
 =?utf-8?B?bTg0U1VJcnh5ZGgwKzVBNm5rVmplRUdiMXg3c3AwNVVsNzQ4dG1EemYrdDFV?=
 =?utf-8?B?UTJyWXo4VmlVNEJCRW9iUT09?=
Content-ID: <6F0BDD2221A3EA4AADE5450440E4D925@namprd11.prod.outlook.com>
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SN6PR11MB3229.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 14413fea-5965-49e5-487d-08d9372b380a
X-MS-Exchange-CrossTenant-originalarrivaltime: 24 Jun 2021 16:15:01.1955 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: Zx7rc8K40znptSc/ghh68zyk3JU+P2gcYNC0kAFn15HrxXCuXKgyAZrvoa/FpRJdCT3ViCGrt/SnuwZz3jMmExsBs38y6nnIB8k3hVIKim8=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA2PR11MB4921
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [PATCH net v1] iavf: Fix ping is lost after
 untrusted VF had tried to change MAC
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
Cc: "Dziedziuch, SylwesterX" <sylwesterx.dziedziuch@intel.com>, "Patynowski,
 PrzemyslawX" <przemyslawx.patynowski@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Wed, 2021-06-23 at 13:08 +0000, Mateusz Palczewski wrote:
> From: Sylwester Dziedziuch <sylwesterx.dziedziuch@intel.com>
> 
> Make changes to MAC address dependent on the response of PF.
> Disallow changes to hw mac address and mac filter from untrusted
> VF, thanks to that ping is not lost if VF tries to change MAC.
> Add a new field in iavf_mac_filter, to indicate whether there
> was response from PF for given filter. Based on this field pass
> or discard the filter.
> If untrusted VF tried to change it's address, it's not changed.
> Still filter was changed, because of that ping couldn't go through.
> 
> Fixes: c5c922b3e09b ("iavf: fix MAC address setting for VFs when
> filter is rejected")
> Signed-off-by: Przemyslaw Patynowski <
> przemyslawx.patynowski@intel.com>
> Signed-off-by: Sylwester Dziedziuch <sylwesterx.dziedziuch@intel.com>
> Signed-off-by: Mateusz Palczewski <mateusz.palczewski@intel.com>
> ---

<snip>

> +/**
> + * iavf_is_mac_add_ok

Please fix this to match the function name.

warning: expecting prototype for iavf_is_mac_add_ok(). Prototype was
for iavf_mac_add_ok() instead

> + * @adapter: adapter structure
> + *
> + * Submit list of filters based on PF response.
> + **/
> +static void iavf_mac_add_ok(struct iavf_adapter *adapter)
> +{
> +	struct iavf_mac_filter *f, *ftmp;
> +
> +	spin_lock_bh(&adapter->mac_vlan_list_lock);
> +	list_for_each_entry_safe(f, ftmp, &adapter->mac_filter_list,
> list) {
> +		f->is_new_mac = false;
> +	}
> +	spin_unlock_bh(&adapter->mac_vlan_list_lock);
> +}
> +
> +/**
> + * iavf_is_mac_add_reject

Same here.

warning: expecting prototype for iavf_is_mac_add_reject(). Prototype
was for iavf_mac_add_reject() instead

> + * @adapter: adapter structure
> + *
> + * Remove filters from list based on PF response.
> + **/
> +static void iavf_mac_add_reject(struct iavf_adapter *adapter)

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
