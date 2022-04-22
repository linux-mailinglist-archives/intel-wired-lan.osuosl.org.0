Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 4303450B65C
	for <lists+intel-wired-lan@lfdr.de>; Fri, 22 Apr 2022 13:46:29 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id AB38041B3A;
	Fri, 22 Apr 2022 11:46:27 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 9zY5H-J2OXXh; Fri, 22 Apr 2022 11:46:26 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 4EF8641A55;
	Fri, 22 Apr 2022 11:46:26 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 8B9771BF345
 for <intel-wired-lan@lists.osuosl.org>; Fri, 22 Apr 2022 11:46:21 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 77C8B83F33
 for <intel-wired-lan@lists.osuosl.org>; Fri, 22 Apr 2022 11:46:21 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp1.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=intel.com
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id bwLBAUrPQar7 for <intel-wired-lan@lists.osuosl.org>;
 Fri, 22 Apr 2022 11:46:20 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by smtp1.osuosl.org (Postfix) with ESMTPS id BCB5A83F2C
 for <intel-wired-lan@lists.osuosl.org>; Fri, 22 Apr 2022 11:46:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1650627980; x=1682163980;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=6RdcQ22hu+yPSX7opEihUEIY8a0kvBC+95ZtSDwEx1U=;
 b=kXWuyrmlm6eZUrJvsBj/FJYBh0UveYjX4T+banPI6WCYqRDfwVVY/uIR
 wf1cUUIdN8fYPqseoewFpsob79Rn9YyPPIgSZ98JcT7mLl81rcvWalPTm
 VzhqtSBnzKSKr03e+FhKTvmi5PHfIWxV99C7/F7bLaUjbSuMHOpYUKmMR
 f6Z2xR7mRY+PWnjEJ2cq00kod7Wl6y8QnjzmUV1Ym0FYdQeNUU7OLhtrp
 aBqabIKQPktLo0bIzukrOSNdc62yEijhSmIq8FaRq9ZUA7WDkg5ACAlnj
 MF9UbVKeBP4FsNjL1itvwq+rrw6F2Dtm+Pn/v72gLMOMCTMqSNM8Wcxg3 A==;
X-IronPort-AV: E=McAfee;i="6400,9594,10324"; a="262252331"
X-IronPort-AV: E=Sophos;i="5.90,281,1643702400"; d="scan'208";a="262252331"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Apr 2022 04:46:20 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.90,281,1643702400"; d="scan'208";a="672096585"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by orsmga004.jf.intel.com with ESMTP; 22 Apr 2022 04:46:19 -0700
Received: from fmsmsx608.amr.corp.intel.com (10.18.126.88) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27; Fri, 22 Apr 2022 04:46:19 -0700
Received: from fmsmsx604.amr.corp.intel.com (10.18.126.84) by
 fmsmsx608.amr.corp.intel.com (10.18.126.88) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27; Fri, 22 Apr 2022 04:46:18 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx604.amr.corp.intel.com (10.18.126.84) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27 via Frontend Transport; Fri, 22 Apr 2022 04:46:18 -0700
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (104.47.55.171)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2308.27; Fri, 22 Apr 2022 04:46:18 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=YB8FIeaG2WiyK8Uudg1w0qFhTmzXVexQ/t60knBYD5gCQ1kB26v2SkFKDoL8xCjIrOFAWfuvw6k9hNDG3mjf0XDRsS4d30uBHpgaiTdoZbT5WMBw50hZ63EYdfGSJX+9nvWJt3TPe9kNzUSs7w3bl8qgoFFUd3bdAwdWylyf1hh5QqMkWlxRmdg/pR7lUpfTHeDQcZvcafOWIFfRykyAYfDMGD98+c7NkoCfjdqDI378BP+SHB7K/8jR3PDq2UyWfc6g1sLDuU5W0fuoBYTf6FNDiSmohLmVPBjOKROe5ZEfFWaeEG3SWndrzc4RvkK1JGNDuoLIFmDZxJgxVfFqtQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=6RdcQ22hu+yPSX7opEihUEIY8a0kvBC+95ZtSDwEx1U=;
 b=MSaUC5uyM806qa82NXAVi0r9Dk5G1r/hhs52B0ukvu/t0XP5hhKfPEUtKl0seOWWLeibI9YqAstRhSIbT8MEwYBaTg0e+PihxkZhvG8EDcyBknrSIPpBc+QARpAXvxyf1ImuSb6pZL6NRirlbwKc+/PiWbS6j5jqSmwJ8mAEYW3i4hwlVsTo86ORuUtaK5NqSMeQ87tOq5LfLZE3Q2IhP4EZKyX0X3vt3TbxCHhvuI03UDylx2xUCGFwAvTy0rbUJw5ULRq2XF6z8lDRSFtA59RdoXw67faKbbT5IsRLuSSC1jiGdeSt17rfrSKAs6J5xXmOwMEuqod7nM7IwIaU3w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from MW4PR11MB5800.namprd11.prod.outlook.com (2603:10b6:303:186::21)
 by BYAPR11MB3110.namprd11.prod.outlook.com (2603:10b6:a03:8a::23)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5164.20; Fri, 22 Apr
 2022 11:46:11 +0000
Received: from MW4PR11MB5800.namprd11.prod.outlook.com
 ([fe80::c6b:9012:d14e:5401]) by MW4PR11MB5800.namprd11.prod.outlook.com
 ([fe80::c6b:9012:d14e:5401%6]) with mapi id 15.20.5144.022; Fri, 22 Apr 2022
 11:46:11 +0000
From: "Kolacinski, Karol" <karol.kolacinski@intel.com>
To: Paul Menzel <pmenzel@molgen.mpg.de>
Thread-Topic: [Intel-wired-lan] [PATCH intel-next 2/3] ice: add i2c write
 command
Thread-Index: AQHYULQJiE2d00g/g0aNFCvSbG1HOazw/1uAgArMSuE=
Date: Fri, 22 Apr 2022 11:46:11 +0000
Message-ID: <MW4PR11MB58004C0C9CA45DB08BEC811286F79@MW4PR11MB5800.namprd11.prod.outlook.com>
References: <20220415103139.794790-1-karol.kolacinski@intel.com>
 <20220415103139.794790-2-karol.kolacinski@intel.com>
 <76921ca9-07dc-3c26-cf48-a74274a795d0@molgen.mpg.de>
In-Reply-To: <76921ca9-07dc-3c26-cf48-a74274a795d0@molgen.mpg.de>
Accept-Language: pl-PL, en-US
Content-Language: pl-PL
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
suggested_attachment_session_id: 249578c0-c625-b51d-17f1-21c1260a40c5
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: ff65d7a4-5941-4ae2-596d-08da2455b2ae
x-ms-traffictypediagnostic: BYAPR11MB3110:EE_
x-microsoft-antispam-prvs: <BYAPR11MB31106EA72AAA560A1FBE10A086F79@BYAPR11MB3110.namprd11.prod.outlook.com>
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: /gG9vXvf1g0SGk7N1MctI2yw7Jyf0hswYSfX/UQ3Y5Eehov1Hpo35plgb3WkL5FYDvnNtDmpobSCPDyCswtmrwhXRvJqqc/qCm8W0I3EA3QlF4kZbNdfuU35S5Zjz4Mm3TYjdZ4PUJLLZ1NokjuTiIg2MlzK5AGDpmIy8E0Vyi/FQirXjQWegwV7TERQrbdxskWTvp9X9+Ws3Ks6DxPlMY9zTjnIX48EutRzE0JP+KdE5Un4yvIEGJ0uEgeXi6uY/nYaxcEMfYveSASBL5ODKjmfk51iMiShFw9+XaNksxmlpoc3oufOhgfnhPdSsjarTaL0RqvHEQtPJU7W0T3R4p9Et7HnmG/mQIdYqFj0wVSrqWmTNsYEp5r7tFzYw8Ws3RPZEPj7MqKw5ZBTfQkKET0HelyUi3Re3nrR3j5RhP7MSu+q+HVfbMJDe8Nu7NtNAAhyTeZJX8OxuL9nbN28axOIlzJWQkIuj/4TTDVMG+eg45wHGg99hpIb6nWVR0Eicd4b7W1xr1FNjC9IgV2LT9Y7mqJJlx+eTIyZFHGV8xpByGBddvBNAZZN4RJ6JcFT21eiE2q012V3T0RX4T2um5V6zbMFilpQ3lpqT9lF34o3dwmymJK7qABlp4jZlpN8dii6mMfc0hc2HdgLA5sOVeWUOUKMkj0CX9flFK9o+2eQduWuz3R1n2llvGHSGO90+F6dwPs5hkcZz7py27ZHHw==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MW4PR11MB5800.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230001)(366004)(5660300002)(91956017)(26005)(86362001)(316002)(33656002)(55016003)(8936002)(8676002)(4326008)(66946007)(186003)(66476007)(66556008)(66446008)(76116006)(52536014)(64756008)(9686003)(508600001)(82960400001)(6506007)(71200400001)(6916009)(53546011)(83380400001)(2906002)(38100700002)(122000001)(38070700005)(7696005);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?iso-8859-2?Q?epH6Uhzf/ZignRm5k5aZLljG8tC8aH1LGCXRssTc/hCMh9cQdGCu7IiWLy?=
 =?iso-8859-2?Q?951aajA+eN5+MtmwQoo3Wl+kOns+sdLvd2vLeLigPOq9AWQtrINixkTD9m?=
 =?iso-8859-2?Q?IXZpB5BGNII8oYJJ91eU4sGjCBxCBqOadUnmum3hyOJ24uftfB5IU9CYJx?=
 =?iso-8859-2?Q?kw3QCg5+tp6Q3wP8dMHrat8Zwy0XMDD2rwxAPdfKI4HiFZV6SqV0Xp1IeF?=
 =?iso-8859-2?Q?qmdXwAXk5yk4TwMo7fqMkoDVqybow2PaVxKKnnph6z4wywAbRpZ/IkhNGU?=
 =?iso-8859-2?Q?vIB0FHj+F5zhYhpMZF2YHAXt65e8YsuVgc8O+UE0jzOggc5ZDgohNpklyO?=
 =?iso-8859-2?Q?Hs8QcsVQVQzPa2z0A8Sv6ZyUde1RpZ5V2LXWVfXaI9JoPdX5SPCnWSS4x0?=
 =?iso-8859-2?Q?PoRlSC9HyMZPLokkMqU0gj+8zAvOptEIJjBXx9Hgx949CGdn913ouLjqm2?=
 =?iso-8859-2?Q?u/9hvizgCC50of1U+k5usuve64CzlmASbJPal93dCaWe2ig6LfStxVk/bu?=
 =?iso-8859-2?Q?4Oo3LAAw7Fc7QWO9d89sQj+fYCbAr50lqTWqV7ogVxjwwOUtMyzpm+dnQZ?=
 =?iso-8859-2?Q?rp0+h+4YQf+QMWWh+aL3DRXHwYjgb8s67xEF8WpN8cQ4avu7HHtYJJpO7M?=
 =?iso-8859-2?Q?X8Zx2yk70dojZ/NkMcL9qLOLvnW3EUEe+VtMaZ8X+DGMTl6yOoqeSbNlCa?=
 =?iso-8859-2?Q?a00au5xWvnnd8ogfTNl9qUp2odihQp9ArHyX6zI5PliAqB9IWT6qJsaN9l?=
 =?iso-8859-2?Q?BU/VDxIWJGrTrRascdlDmUSyxEAopddjdqJId+2Spz4BvkoaISXTRUjLip?=
 =?iso-8859-2?Q?ySMyVvozUzRPAsec4v+gOugQzrAThANQiYt057b/GqWwPOQZ26itThRO/m?=
 =?iso-8859-2?Q?9OAFTwL7Jv+dujd+jr/QtTeEZpwYSkG0ANHwKokjcIq8DTCaUIQdP20nJh?=
 =?iso-8859-2?Q?uQ8os6MPHg3YbdEIlyZkUAtID4BZvqOxfL51NarlzkR7trtDTApoR2q7ii?=
 =?iso-8859-2?Q?SolGGUP3DxKZQydaEqGrMxV3h9eXfncDzjDCntx1VV+ABKy4kNGXbcBeRK?=
 =?iso-8859-2?Q?CP/4aU5U5qXODfyAQBHh1Kg1VD1D2ZXXooA1qxmdqCkcEt+UWKg1k44YrO?=
 =?iso-8859-2?Q?TdaRXhmUJRJl8G65KfgCjEpL1iJA3ef7kazPisVGO+oi0PQ7E72AR0DoFm?=
 =?iso-8859-2?Q?jbRa9k8wsBWswjI5avgLei1GHmyPUpn1A7gbtaRl7xF4I9NYXuz9pMhtDf?=
 =?iso-8859-2?Q?UnZQiD/8cuO+FIch06LjpzuEozbQYbpQ2OVHToN0+sQU1rtxYeklhDYrA6?=
 =?iso-8859-2?Q?TXOPYK0XmFFT5HyDvJR8TxaqA7i+ChVTAB711m1pkfCj7007TVEazfIFpS?=
 =?iso-8859-2?Q?q8neF1yKHMtH/tkFtDcxW3ZpDhdfisXX1XHxEGLt7HYHtdXtTR8p8DxQSY?=
 =?iso-8859-2?Q?IEE8OW3NQuSouE/R1CxzZSFDX4eYAQPU/etsM+s2SOz5j6wotZa0aPYQb+?=
 =?iso-8859-2?Q?CBgObl0LiEXT75oeMxqva02pUFcbXXCziGCJIMXNt/Nsrbu36bCMPD8+Bx?=
 =?iso-8859-2?Q?4gINx7pNMVUUbvA+oXrt0G9A/Qz7pKOHDiyvmaVwxyjlvt8ThQrGnPXAXd?=
 =?iso-8859-2?Q?Jyoa1lHC67rwWZw3qS3IgMEa1BtJN0yLjxwXQvqM2G47MXzhUELWyqQdk3?=
 =?iso-8859-2?Q?AmYPxeyaHHZl0/wyeByc0jSmXvuUVIY+Bb+oqkknPC63QrCUm7vdaRYEW4?=
 =?iso-8859-2?Q?MpwNxU4/rC8OqXXo+AJ8bBd41+pwFKzh0uXm4UvXqP3ELAR1GlAgzNKn2J?=
 =?iso-8859-2?Q?3CA+6MEPIewAzH19TSRnWxwpjEYzBOU=3D?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: MW4PR11MB5800.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: ff65d7a4-5941-4ae2-596d-08da2455b2ae
X-MS-Exchange-CrossTenant-originalarrivaltime: 22 Apr 2022 11:46:11.4312 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: nYTpStelzDZrCw/4Ls/1HWErE6AUWpe5CcpoK0sFkIkE35ammJnfvq8qMbtqbom2ppcyFIYnmdoayyaxhTIdBjAdLkWLQEq4N1PmhH2M/as=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BYAPR11MB3110
X-OriginatorOrg: intel.com
Subject: [Intel-wired-lan] [PATCH intel-next 2/3] ice: add i2c write command
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
Cc: "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Content-Type: text/plain; charset="iso-8859-2"
Content-Transfer-Encoding: quoted-printable
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Dear Paul,

Thank you for your review.

On 4/15/22 3:55 PM, Paul Menzel wrote:
>> Add the possibility to write to connected i2c devices. FW may reject
>> the write if the device is not on allowlist.
>
>Did you use a datasheet for implementing this. If so, please mention the =

>name and revision.

Unfortunately, the original author did not leave the datasheet.

>> +/**
>> + * ice_aq_write_i2c
>> + * @hw: pointer to the hw struct
>> + * @topo_addr: topology address for a device to communicate with
>> + * @bus_addr: 7-bit I2C bus address
>> + * @addr: I2C memory address (I2C offset) with up to 16 bits
>> + * @params: I2C parameters: bit [4] - I2C address type, bits [3:0] - da=
ta size to write (0-7 bytes)
>> + * @data: pointer to data (0 to 4 bytes) to be written to the I2C device
>> + * @cd: pointer to command details structure or NULL
>
>Also document the return value?

Done.

>> + *
>> + * Write I2C (0x06E3)
>> + */
>> +int
>> +ice_aq_write_i2c(struct ice_hw *hw, struct ice_aqc_link_topo_addr topo_=
addr,
>> +=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 u16 bus_addr, __le16 addr, u8 p=
arams, u8 *data,
>> +=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 struct ice_sq_cd *cd)
>> +{
>> +=A0=A0=A0=A0 struct ice_aq_desc desc =3D { 0 };
>> +=A0=A0=A0=A0 struct ice_aqc_i2c *cmd;
>> +=A0=A0=A0=A0 u8 i, data_size;
>
>The loop variable should be a native type.

Done.

Kind regards,
Karol

---------------------------------------------------------------------

Intel Technology Poland sp. z o.o.
ul. Slowackiego 173, 80-298 Gdansk
KRS 101882
NIP 957-07-52-316
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
