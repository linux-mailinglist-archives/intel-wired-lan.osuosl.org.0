Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 56F769AB17B
	for <lists+intel-wired-lan@lfdr.de>; Tue, 22 Oct 2024 16:52:52 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 996BB80EB1;
	Tue, 22 Oct 2024 14:52:50 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id o784WVC2MABW; Tue, 22 Oct 2024 14:52:49 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org C508E80EF4
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1729608769;
	bh=U86m69UptVCnHogz8rFOK5TyQft+2OGTkcbzans//kE=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=3KMmqHLNK1xHNLjZA4hQXXsqLRwMt+btTe8wE3Fl4jEOugiHGHFjSFHvF/Kx8Bc+X
	 j60B8BUxnShei+PLjZDyMhtPJ15Ik7z0X99uF+KipwjGKbQLjgyKHPpGA5sCUnvHvY
	 No6abVXD7HrScg5X7SpIf6X3RMADSizEa+Lbei4vY78UYLI+NCQ/D5pDj0IAmbSzVH
	 Ba6awCsb/95aF8PiBymvSpJ/GdAjnOtWlbn7A/BQHEzAl4V7VjK4T1Dgz+8iH5mcpk
	 dZaUAMSJt1jTOfciJT4ZMZRhFFnSSB+tjiihOdlRk0ALhyBsSDtEVzOt/wq4VnxttD
	 BfSVBNGUqGLag==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id C508E80EF4;
	Tue, 22 Oct 2024 14:52:49 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
 by lists1.osuosl.org (Postfix) with ESMTP id 5BB8D71F
 for <intel-wired-lan@lists.osuosl.org>; Tue, 22 Oct 2024 14:52:48 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 56D8060647
 for <intel-wired-lan@lists.osuosl.org>; Tue, 22 Oct 2024 14:52:48 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id vOC18WxG8eHl for <intel-wired-lan@lists.osuosl.org>;
 Tue, 22 Oct 2024 14:52:47 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.15;
 helo=mgamail.intel.com; envelope-from=arkadiusz.kubalewski@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 5343D60604
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 5343D60604
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.15])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 5343D60604
 for <intel-wired-lan@lists.osuosl.org>; Tue, 22 Oct 2024 14:52:47 +0000 (UTC)
X-CSE-ConnectionGUID: nbhSnox7SGa+IMGgyI/+XQ==
X-CSE-MsgGUID: kYieOrXpRLGunqSKpD+Puw==
X-IronPort-AV: E=McAfee;i="6700,10204,11233"; a="29258277"
X-IronPort-AV: E=Sophos;i="6.11,223,1725346800"; d="scan'208";a="29258277"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by fmvoesa109.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Oct 2024 07:52:46 -0700
X-CSE-ConnectionGUID: MumF5zFGSYKGZ1o5U7ZWgA==
X-CSE-MsgGUID: 5n4JIBrPSEOtn2VNU0WG1g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,223,1725346800"; d="scan'208";a="83876636"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by fmviesa003.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 22 Oct 2024 07:52:46 -0700
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Tue, 22 Oct 2024 07:52:45 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Tue, 22 Oct 2024 07:52:45 -0700
Received: from NAM02-BN1-obe.outbound.protection.outlook.com (104.47.51.45) by
 edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Tue, 22 Oct 2024 07:52:45 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=wooaXliwrzBjkSKVtlwsEyR1yl3ZVUqUyW3V+lkex7f08ZJUD88Id/Ls4Gvk5rB+QNGI+VZRUwQvL9zVEDTUggYq8pzdI0ptOCPTj3FXZwMK1PnHGvW7HsTK/XjaZ8zu0N32MDaQhvZix5+OjbFCu+IJPZ+OcESRcD/DgrgUecKYP+eHvNsgcOk55Hn12XWpZYxvTGg5ExfCDyv0eq/LAkYxvHeXZ38+wbGzfec4Uso2L/CBO9AQoRs8JxxPTHREmEp5LljeLQEpyQsiurroBegDpbvRX+gM0l7QTnHiQ8E9Z3UZwF/4wHFUhEE/td6300AXIUdN2PflInVqSjQKuw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=U86m69UptVCnHogz8rFOK5TyQft+2OGTkcbzans//kE=;
 b=l/7tibKROT+14Bd9vCpTJKz2/tPXBitYIg+Nys93HsJ3ihSdRNDc+uKZMNKKpHcbJHXMy49PgKoKNmGXmGKi1lNAGbtnXRNQTMcNMwd9n2QLvFkMMAPY81vMKj54aKHCHyQZ4mEnsu2lz9IOkGiKtwxddOW+PpWBTu0+Pa2rhQz3LUHWQyrWpvGzxh3kP5doBW+fyc+Hf8vmMsqCgWzLMwTa8TnxlsYMuybdTs0F4T44DDjic0vaeDdNir7ORUePLgTgHTsRSGdoAk96HmvQZeCCYx+fQ9ycZBI0m1nSrBVaNO6P6J0LoWxUDAYC3tqO7N7CPAF25Qu0Z+rUbKY7Hw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM6PR11MB4657.namprd11.prod.outlook.com (2603:10b6:5:2a6::7) by
 SA2PR11MB4857.namprd11.prod.outlook.com (2603:10b6:806:fa::12) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.8069.29; Tue, 22 Oct 2024 14:52:38 +0000
Received: from DM6PR11MB4657.namprd11.prod.outlook.com
 ([fe80::1d5f:5927:4b71:853a]) by DM6PR11MB4657.namprd11.prod.outlook.com
 ([fe80::1d5f:5927:4b71:853a%4]) with mapi id 15.20.8093.014; Tue, 22 Oct 2024
 14:52:38 +0000
From: "Kubalewski, Arkadiusz" <arkadiusz.kubalewski@intel.com>
To: Simon Horman <horms@kernel.org>
CC: "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>, "Kitszel, Przemyslaw"
 <przemyslaw.kitszel@intel.com>, "davem@davemloft.net" <davem@davemloft.net>,
 "edumazet@google.com" <edumazet@google.com>, "kuba@kernel.org"
 <kuba@kernel.org>, "pabeni@redhat.com" <pabeni@redhat.com>,
 "richardcochran@gmail.com" <richardcochran@gmail.com>, "Loktionov, Aleksandr"
 <aleksandr.loktionov@intel.com>
Thread-Topic: [PATCH net-next 2/2] ice: ptp: add control over HW timestamp
 latch point
Thread-Index: AQHbI8T/x6fIWxur30OZ4oT2qjLZxbKSyFUAgAAT+yA=
Date: Tue, 22 Oct 2024 14:52:38 +0000
Message-ID: <DM6PR11MB46577FE6D7147429D20CEFBF9B4C2@DM6PR11MB4657.namprd11.prod.outlook.com>
References: <20241021141955.1466979-1-arkadiusz.kubalewski@intel.com>
 <20241021141955.1466979-3-arkadiusz.kubalewski@intel.com>
 <20241022134020.GU402847@kernel.org>
In-Reply-To: <20241022134020.GU402847@kernel.org>
Accept-Language: pl-PL, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM6PR11MB4657:EE_|SA2PR11MB4857:EE_
x-ms-office365-filtering-correlation-id: 26a7a390-1e0d-43b7-279a-08dcf2a92c69
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|376014|366016|1800799024|38070700018;
x-microsoft-antispam-message-info: =?us-ascii?Q?6D2GEyrqKlQt+UtlBpI4nlDaGCCfT2BAM/SoaM+zJO7KhV2KNmunKTMedJoX?=
 =?us-ascii?Q?cGPYkAJ1Dj9h8E44cyKbXQv9NYoiGQaVqMGFoJrrk6QoriOfU6RF4qS18tWy?=
 =?us-ascii?Q?gvoL6GSCXwtdBSvPWYurA1TJJdi2ktaqE2QbL4wKIxOSo3dm7n0HoQky3kVi?=
 =?us-ascii?Q?87Ta1WtqxjkBWHB/Omyz2dJrdeoyeemS4Wk8dSxHmmVI7xtvsJGibZpspIq4?=
 =?us-ascii?Q?v0/2iZbxwgdJPjt+jq2FCXRWHiJYMAi9yhvyl16t8Twy2oPpfgRZHY8yiiZM?=
 =?us-ascii?Q?ifKBAPpIGRoQA/FGX4+9ClX8Eb/KMy2ZpXyXAtYrLsAvV5NoJ3JRkD0+653j?=
 =?us-ascii?Q?VmTZ6IehvOpLwnczhG/M8VF+FFpJCiQok2PsZws6ZDFge+nrYaiXFd0NCc3U?=
 =?us-ascii?Q?vsoDFqGPUh5JZxpPakbIJ8+VBOnLiAVJGmdKs13IcKtlEGE/7ms8app+O+p8?=
 =?us-ascii?Q?sG5ogkuD3xjE3q/FLL0o2Jw8+XBB2DFEfpRGBAQ8IxoCvsd9xfLeJHP/vg53?=
 =?us-ascii?Q?0hMfK31P3BKvxjpd+6vd1h9+Vrz3ypz9K3IcK8pV5kGwgwhMFEkylEQ99LIf?=
 =?us-ascii?Q?MV9b/D9KKZby4725D2vk4puXcp7i4kg9u3OooYSnu5HIUSMgffKmgtk9DQSw?=
 =?us-ascii?Q?roBS8HWX073GO0OkwAJrTzih32OyTayiiFK+cAmG54wbKc737y1bpYO2MtQB?=
 =?us-ascii?Q?cK2p7sK6fH3XzXEblALg6NBTVrxjRfcmNqVELC2kAgdGOKexiEMcUD1X71u1?=
 =?us-ascii?Q?vzMAemmBrz7RmYyWPU2QdrfJh0kToa1Az57km9dIDr+pJRMeN6p/ggegS16f?=
 =?us-ascii?Q?o/4pnJDnrKuFJ2hGqNoEaK8Sqm+2xflgEWx8xYGRaU61EnTqxhUV5b+HmjtZ?=
 =?us-ascii?Q?SzU67iBr7JT/Ppu8toxJiSbXVjFbWutGOXprmMyEUKDB+4R8CeZ5czQfvufv?=
 =?us-ascii?Q?5Gv90WcmZGDneTesdQ74aOcTFqieMefFxZYDdCLIEQQZjFXXHYQx615UU/Y4?=
 =?us-ascii?Q?SV2gytJG9/Ey2zj40YUhT8bfVUrGMBS0NFb1D6z7MoTB7HnDK7jUA6kKMIWi?=
 =?us-ascii?Q?2G6ugBkZOVYYSattvWaRWA1rcqTyBKn8hwfQrz6bztQC+/AS99VHv4OGeC/O?=
 =?us-ascii?Q?PJEXQr8MPQxRPzr/fHFb2CEVcg833droivoi91DL98+Z6tAGNfQSJ2DfulfP?=
 =?us-ascii?Q?X6IupE5fxMIga9IoaPPolja6Lg89rIcUZ39ipWyPphBl90YTe8oh/YdZ+1E3?=
 =?us-ascii?Q?WZ2kqFA2Dljff5PhS3Y/YXCUD1NoOapylM55N+ODfGE3SMQIErtu26qRJyPW?=
 =?us-ascii?Q?pyUK95szKJfNlxVq4YNhXl7nh6VkdWb9R6ukV+inkPolZ3MixjMvYPHXZl8F?=
 =?us-ascii?Q?GfZenng=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM6PR11MB4657.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024)(38070700018); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?SNRt24YDEN79odkhJ5vrfGjDwqeIprnVaSynsjQqzAZOeTg0dRQvg46cXI9A?=
 =?us-ascii?Q?WynbwnEaL28KUK9uWC7NTMje/6GVM9nTxOucilluLibdYHb5K+7OVGAY+ClL?=
 =?us-ascii?Q?Gw0qDaxNoql8cwUyOyFlFzsQG9MUbZl1Ib24KT7sfUkZpa7o3PGZs6aQZbK2?=
 =?us-ascii?Q?FJr/9cv37sZjnn8kEleGX5jU3R6jYEanXy2ZS44gia2JoAX/rrmYj7duqR7u?=
 =?us-ascii?Q?7+EMBsbvgDhsUqcP7PiJw7hzgZbabT5WWqS0YiZUXDigiYM6xrEGY7glP2Al?=
 =?us-ascii?Q?olSezmu6SL4F9c2vFQmPXkkhqwZBGVK7tOQ1NYTCytHbky6iMa2QJ8sXj4Ul?=
 =?us-ascii?Q?Ixtok9VkSN7xXtjmGq0Qno4kTIj/tTBDqFSg0atDXwhsWqvTYctN/T/AwcbZ?=
 =?us-ascii?Q?EWPopuPi6CT3aPCc9zxgfMroFIH7wm7Kqf1hwkCFZxowaCL+2ldjaaKP7vYn?=
 =?us-ascii?Q?vc8heysj4v2H0KEGCPcrPvNDs00oD0fniVXQFdVTo22k3P6Xy6553xxFrYmx?=
 =?us-ascii?Q?su9/CVSQ95Xn116q/NELSIrJge9LGh9qn6DkOmWGFprqFuZRc903mJb26Vvq?=
 =?us-ascii?Q?WzQ4HcY0i02XaeiUbvet5jUeaB89XhxPCxmZcb6BZIBCGWxnp/jnYCTgu68R?=
 =?us-ascii?Q?hOvxTQ3nrZwRn1tYXsSNcedKQBpwjeyoPBTWc1upPD39xvI2L/LHmrP/5c3f?=
 =?us-ascii?Q?iLbB4/WPiXEnSjzls4yYYXqXmhXZQUwEYRJPxEAnnWXEECKlIWv8u9ysxn9l?=
 =?us-ascii?Q?he8aQaD0/9wKF0GnH9qVQfX7bnoL29EBflmlUTED89orv4d0TsMAuwM7/wF6?=
 =?us-ascii?Q?AkYkYv58NYzwRV3UWnmQ4QjZKnxZJOpikhMfyg1bSjTczVHQa26c8F3jtpSg?=
 =?us-ascii?Q?tNQcb8XPyU1/ng1G/jgyq4aJPKk8AtKpXdMfbaIhP2r5bBVW4vz6hUrWz3jO?=
 =?us-ascii?Q?rtLByWtC4jnDlREV0I+ym8iuitTGjh60sGeonmufYiuNfxh86Tm+Sv+8pNRt?=
 =?us-ascii?Q?fXtX7o86K40RSdJn94RVnlj9WE2V4JrsSxMY5kwMniMJKALQdEMoJs/ZMeP9?=
 =?us-ascii?Q?KEPTGzWBMdCzB4+kgqe7ZnFTfas41GV9Z/8FwKoFd4998qXsEA9a4oZvpYIu?=
 =?us-ascii?Q?JOMGlEUom6eLl8eJJNQnr7h60R52FEfCdAPMXcXt0Mciq4EO6dOQFREQRYZM?=
 =?us-ascii?Q?qjXFICX24tmrNkg6usZCXgLYI5hjBEGIxmgA4/36WUxW7GV6R1P8Y9m1BcyA?=
 =?us-ascii?Q?cv2Mhutx9/84PN6UBns3BirJC8Ogt0LNDbxaN8PgWbVb84nfCNLv/gv34bsh?=
 =?us-ascii?Q?ttPCIFPGQie8dMel8TDNz5b9JPLgk+HYskowZFfqZYYSMeH5Cw/ypx68bFJC?=
 =?us-ascii?Q?7wD0++w2MRIkqNDxMAWEyWWtk6oh4PpDXdC7Mc5v/X3CoND41K2F93qDAaWL?=
 =?us-ascii?Q?n7Wlvt++L3zA8V/kGuocuerMUl+6estPrHADJaoL4rxWnBMJFPMpEIPrDsMC?=
 =?us-ascii?Q?brr3L4W/9szBZVBqtnBvRm2z43y6ShjZt1ZB2nTG3UmWUrEnB4iEWfsm/4EY?=
 =?us-ascii?Q?kr9NEfTQ+kAXHGdwhldp9wE7WBITf5w+buL37E+i?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM6PR11MB4657.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 26a7a390-1e0d-43b7-279a-08dcf2a92c69
X-MS-Exchange-CrossTenant-originalarrivaltime: 22 Oct 2024 14:52:38.7681 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: J0MSrCYhU19KuBmL3QIpw+0NqrRRj7zGB1Ls1Qs856wC73o6/tUdTvuiBiZpiFxDYZgZYAkcCu0L6k+todYEIzcjbPF+y+0Dbe27+AbuWwk=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA2PR11MB4857
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1729608767; x=1761144767;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=bN0/Xm87V7igvfhno35mbh1PQygwykXN/hA6uAWxjMU=;
 b=LHw9n7F0w0/FfJUqKeDsTd3rWmnrI35uixAt7MKJttDgGOqqGKc7hjT5
 QACbvDfrRg6vQE8oqIVbBlWb6D8sU8yBN+B9jOPClKE7AxWSJ6Luoz9Qp
 RctqlKo6c9INxvA5C8mHjfiWEM1X+VlrCqqLUouyUxLNJPQm5mKJP109U
 oZ2RXIQmMfK8MUw43Lyjhz59mUQOw22AY2cw3KJiqoKfqYKUu1Va2Rb9C
 1w9lKpQl1CU6SE+ZrdigK+3QIYG1mfxVyc8PHoGXo+k8W04DyokHHvO3M
 ov/7uN2C5ihX8x00t3MBXaFITOEo9ALv8NEgm5bsae+3wsClSbKRa8/oP
 Q==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=LHw9n7F0
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net-next 2/2] ice: ptp: add control
 over HW timestamp latch point
X-BeenThere: intel-wired-lan@osuosl.org
X-Mailman-Version: 2.1.30
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
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

>From: Simon Horman <horms@kernel.org>
>Sent: Tuesday, October 22, 2024 3:40 PM
>
>On Mon, Oct 21, 2024 at 04:19:55PM +0200, Arkadiusz Kubalewski wrote:
>> Allow user to control the latch point of ptp HW timestamps in E825
>> devices.
>>
>> Reviewed-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
>> Signed-off-by: Arkadiusz Kubalewski <arkadiusz.kubalewski@intel.com>
>> ---
>>  drivers/net/ethernet/intel/ice/ice_ptp.c    | 46 +++++++++++++++++
>>  drivers/net/ethernet/intel/ice/ice_ptp_hw.c | 57
>> +++++++++++++++++++++  drivers/net/ethernet/intel/ice/ice_ptp_hw.h |
>> 2 +
>>  3 files changed, 105 insertions(+)
>>
>> diff --git a/drivers/net/ethernet/intel/ice/ice_ptp.c
>> b/drivers/net/ethernet/intel/ice/ice_ptp.c
>> index a999fface272..47444412ed9a 100644
>> --- a/drivers/net/ethernet/intel/ice/ice_ptp.c
>> +++ b/drivers/net/ethernet/intel/ice/ice_ptp.c
>> @@ -2509,6 +2509,50 @@ static int ice_ptp_parse_sdp_entries(struct ice_p=
f
>> *pf, __le16 *entries,
>>  	return 0;
>>  }
>>
>> +/**
>> + * ice_get_ts_point - get the tx timestamp latch point
>> + * @info: the driver's PTP info structure
>> + * @point: return the configured tx timestamp latch point
>> + *
>> + * Return: 0 on success, negative on failure.
>> + */
>> +static int
>> +ice_get_ts_point(struct ptp_clock_info *info, enum ptp_ts_point
>> +*point) {
>> +	struct ice_pf *pf =3D ptp_info_to_pf(info);
>> +	struct ice_hw *hw =3D &pf->hw;
>> +	bool sfd_ena;
>> +	int ret;
>> +
>> +	ice_ptp_lock(hw);
>> +	ret =3D ice_ptp_hw_ts_point_get(hw, &sfd_ena);
>> +	ice_ptp_unlock(hw);
>> +	if (!ret)
>> +		*point =3D sfd_ena ? PTP_TS_POINT_SFD : PTP_TS_POINT_POST_SFD;
>> +
>> +	return ret;
>> +}
>> +
>> +/**
>> + * ice_set_ts_point - set the tx timestamp latch point
>> + * @info: the driver's PTP info structure
>> + * @point: requested tx timestamp latch point
>
>nit: Please include documentation of the return value,
>     as was done for ice_get_ts_point.
>
>     Flagged by ./scripts/kernel-doc -none -Warn
>

Sure, will do.

Thank you!
Arkadiusz

>> + */
>> +static int
>> +ice_set_ts_point(struct ptp_clock_info *info, enum ptp_ts_point
>> +point) {
>> +	bool sfd_ena =3D point =3D=3D PTP_TS_POINT_SFD ? true : false;
>> +	struct ice_pf *pf =3D ptp_info_to_pf(info);
>> +	struct ice_hw *hw =3D &pf->hw;
>> +	int ret;
>> +
>> +	ice_ptp_lock(hw);
>> +	ret =3D ice_ptp_hw_ts_point_set(hw, sfd_ena);
>> +	ice_ptp_unlock(hw);
>> +
>> +	return ret;
>> +}
>> +
>>  /**
>>   * ice_ptp_set_funcs_e82x - Set specialized functions for E82X support
>>   * @pf: Board private structure
>
>...
