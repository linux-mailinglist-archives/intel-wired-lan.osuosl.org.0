Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 49F5867AD5E
	for <lists+intel-wired-lan@lfdr.de>; Wed, 25 Jan 2023 10:09:28 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id DF32561130;
	Wed, 25 Jan 2023 09:09:26 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org DF32561130
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1674637766;
	bh=ZoZ4FwczLpbVHQoVoqGzWHiJ6hk6E9y2nOZSKKcbwV4=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=sq9QaAJrMWueJ4hSHymIZvk6Kor/YraYpJ1dvpPJmjgBOo3QztUcETljW/CzMWv6i
	 lHMNAQqbSpTS9sA0CKnGDTrG+ARjMMISHFI4nWf2eijKgCXHa9ljUv4xfIhzK/xsQQ
	 FozzJc2RD97PvS7OJn1jeNwLsoeC0Smp8J2YFDlDNn0AN88vXDgKgawPV2+RESSv7U
	 uF6kIJw3aRSqFCyWp2X9qmUZWWom8w5UDyV76+0c+4AnQX4xciwJZtZucNuVpkNFo1
	 6an00GAG3PxAXRjyam/M9o6ArfARrLQM8lRtWJOb9jEDTMj6ZNmLJXuOKmr/KBUnV4
	 KMTZBKRUYsWsQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id gLYwgOX1NCKF; Wed, 25 Jan 2023 09:09:26 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id BAC1F61129;
	Wed, 25 Jan 2023 09:09:25 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org BAC1F61129
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id E15AB1BF293
 for <intel-wired-lan@lists.osuosl.org>; Wed, 25 Jan 2023 09:09:16 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id C84184015F
 for <intel-wired-lan@lists.osuosl.org>; Wed, 25 Jan 2023 09:09:16 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org C84184015F
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id YlJgL_kXFfxG for <intel-wired-lan@lists.osuosl.org>;
 Wed, 25 Jan 2023 09:09:16 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 0854540352
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 0854540352
 for <intel-wired-lan@lists.osuosl.org>; Wed, 25 Jan 2023 09:09:15 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10600"; a="314414785"
X-IronPort-AV: E=Sophos;i="5.97,244,1669104000"; d="scan'208";a="314414785"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Jan 2023 01:09:04 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10600"; a="751125729"
X-IronPort-AV: E=Sophos;i="5.97,244,1669104000"; d="scan'208";a="751125729"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by FMSMGA003.fm.intel.com with ESMTP; 25 Jan 2023 01:09:04 -0800
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Wed, 25 Jan 2023 01:09:03 -0800
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Wed, 25 Jan 2023 01:09:03 -0800
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16 via Frontend Transport; Wed, 25 Jan 2023 01:09:03 -0800
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (104.47.59.169)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.16; Wed, 25 Jan 2023 01:08:34 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=cZcPJqLrYlNFPvt5/K/WBLdRHXHc0blOUI0doTRi7yPtU3fvsmK6lzJbgp+xeg98VlTI/nStWNv3FopU7EzGFQ5MqgDpm8Cd3uQKep+BI+LETo5njWwBiO9vyS+u3EyOJR/lz2+S3eTYMHdWs39qSu5ljZaEbB5SePSzgeKs1XEgBDE6I0yg+wpHt8sfTs3R6z2wAgiteEJ7yA/SjRIduvYtVraDAdxDUu4hpzsF7DiKa/qHWDreNYK/GccHdpt3XcONqGZzVeQrvd9aQsH93T2EHnPq1lGbZ/vTUfSIBsIl4JdF156P/dOy6CwN9uT5K3iVddZB4t1SbcNSWmRu3w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=tJUyMp+DeGmk3FL568B0gri0AxCn+XJrBSsuThfGx5o=;
 b=iQGrb0wFUtMgmgTamakrMWg7fCMhbHBhGB8Ef8edeNLiu2+i0ukw4JJkOdvnCCJPPzqlDYjlD4iU3hzkgKz+gMB05DAZE8+fhZjXUP9DJOY/lnNCeFRB8Bk7Pn0vxG48kTQbtzlTv8HOamEliWYWmkhAKwf6k1m3qJfnawbKa3sYnn05o9CnhS0e928A5m0BPGPfm0WPCiViAaQFaPxoFNRl5P0BoXsGKta7ql2JEvd9g171CX51W/MsITRkygR7eqcUJ9EfgYHICXn6ubBwSijWGiz+AvQbtcgGBilVhMXZ8MTiPAmNbXcFMZmwKh2aH8IhU5ljho36gAEX5VC4zQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from BYAPR11MB3367.namprd11.prod.outlook.com (2603:10b6:a03:79::29)
 by CH3PR11MB8154.namprd11.prod.outlook.com (2603:10b6:610:15f::11)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6002.33; Wed, 25 Jan
 2023 09:08:32 +0000
Received: from BYAPR11MB3367.namprd11.prod.outlook.com
 ([fe80::86b7:ffac:438a:5f44]) by BYAPR11MB3367.namprd11.prod.outlook.com
 ([fe80::86b7:ffac:438a:5f44%4]) with mapi id 15.20.6002.033; Wed, 25 Jan 2023
 09:08:32 +0000
From: "G, GurucharanX" <gurucharanx.g@intel.com>
To: Bjorn Helgaas <helgaas@kernel.org>, "linux-pci@vger.kernel.org"
 <linux-pci@vger.kernel.org>
Thread-Topic: [Intel-wired-lan] [PATCH 6/9] ice: Remove redundant
 pci_enable_pcie_error_reporting()
Thread-Index: AQHZK5dUsm1exHQ0Sk6PoM7isKTE366u4bkA
Date: Wed, 25 Jan 2023 09:08:32 +0000
Message-ID: <BYAPR11MB3367CF0A00A1CE1B11A47D0CFCCE9@BYAPR11MB3367.namprd11.prod.outlook.com>
References: <20230118234612.272916-1-helgaas@kernel.org>
 <20230118234612.272916-7-helgaas@kernel.org>
In-Reply-To: <20230118234612.272916-7-helgaas@kernel.org>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: BYAPR11MB3367:EE_|CH3PR11MB8154:EE_
x-ms-office365-filtering-correlation-id: 6d540928-43b7-4411-f621-08dafeb3bb8d
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: ZdPPaI7TyyySg3UCKI6UIHHqc/rYAHyAxR6obFaoa2HZejrmLhfb+34wvkLDOBGYUelBuiXf/V96771pl71xK5U47SDtAYVWP46Jk6rh1JFZfvbFTLubxXQK0xoUER2WDxw5IPF3WRGZHoqNkuqowHg8Wp1bdkyhoMPp9hH39tRK8nNKyZBp0ejrkYXgWG2XfjHfqopmnVMcWvd2gW4Sdu6sbFTRtDJbhU1igff7LF+dEXbvytIZ/EwFHheTw3JltAL5DyfdHlzH+YYQEexy5agWkJXBbmkDsp06B8eDvNNxP9KmdmwnhBZqXoD4RL0DD4JKhGUBQUOCwWEUQVSFIVt3Qp/br2ZHm3/5MhWHXbXhMqCvaK7vGSc694UdHKoXkWT1eZAW5rtbZTXYNuzTj1OK2NHVXa18lSMfIm1JDJ0d6Sbec6iHvykN8Ham1XCEbVFXv1/6xs0cf4iwmBIE7nOD0iHDMQQc56Py7cDRgnsg7xoimZAWY/fOrGJQjR4By6L3B2uqUVQebdnUgyhiKonEJaqWp8CErBOCA+HDiXCMWO3UaAyHKE46Mkk2+EmckgpUfkt0gT3R0A+Z1D+Gobc8LfKT1zNDjgTK2jFCi3nBaAvveHUSxT1St4qXsGByvakY/YrSh6A/VXZlgDkKeXuM7sDDI28h1xXfdVW+MlRGqnBF3beDlRiQTXUbXiW8rYxXm9aeuFGVJZaUG0OGwA==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BYAPR11MB3367.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230025)(376002)(366004)(396003)(136003)(39860400002)(346002)(451199018)(33656002)(38100700002)(82960400001)(122000001)(55016003)(52536014)(8936002)(9686003)(186003)(2906002)(86362001)(53546011)(6506007)(107886003)(66946007)(41300700001)(26005)(5660300002)(316002)(83380400001)(66556008)(64756008)(478600001)(66476007)(8676002)(38070700005)(110136005)(7696005)(71200400001)(76116006)(54906003)(4326008)(66446008);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?nrnkKx+dotwZZXRuVxYdfzPzbjicAsZXWH0bqpi7fO5FfKW5vcd3kjzelD8o?=
 =?us-ascii?Q?WmrZLvFJcec1IC0Slbd+/H7aHvj64iFX8obeL6BimuGixTQOdSuv1o3RnvYZ?=
 =?us-ascii?Q?5YsPHw0mG5KNFCVmQ5PWe5IVePJjGwhqFxqpQq3hytfVOly81LrVpTfuuZSP?=
 =?us-ascii?Q?6CTNmjxPPvGJIl8UnYOqVU+1PHhTZPZp8ir4dK/+BdN199jfvPmIz1e+9x+6?=
 =?us-ascii?Q?8dcGdcmUoLqyWw32CjnB459jVhCFt5vUvqlCFZKnXtcew6xPKAG83T2JcL3Y?=
 =?us-ascii?Q?Y/rioPo+A2uwVM4JEif77UdE6EuwyzR/ogz0YtDAgT0lshPrzY/liS8q+lrJ?=
 =?us-ascii?Q?en+Gy7lgujQDgccx0M8+oWsf5wPrctP/t4sPbqH5QdE9Vdnvx1yI/H/Pk7hV?=
 =?us-ascii?Q?WhDe85fq+W1r7nStv7t3eIBIiqGdgeWEvTjpkOCKbM5tZVG5pagc3lVvdiB0?=
 =?us-ascii?Q?yoziv+uPjX5YQQuC0ndVwd0uSPvr9cx3sIf5eMTCLCf+HWhLMguq7Cix83LK?=
 =?us-ascii?Q?dYOOZri4Rame0/Hy3GyruccpN0ih/D+BPRHJeHtC8pPtSTHNAIfbP0eE+KXS?=
 =?us-ascii?Q?6ZtRSi2hhRjHsySxm7KZisuWpxlw6QeMsGBKdpThmE+2CY/9VEUaX+BVG17W?=
 =?us-ascii?Q?ny/4l2E6Jt4IBXXlH1EHdw1bTTzaIUyGbiYcP0q8zganW+G2A5zuwb+PSEVq?=
 =?us-ascii?Q?27JYcgHNpSPXi2tqfGGYa7negzFlNwn+yo5xfOHZsN8Lr0/ev7sAlBItAWF2?=
 =?us-ascii?Q?GXWlAj9zmGGvLpaSjgAR5LKN1Lpgz1rppJtCe8gJXU1sh+VoXbj+3JR+JAW5?=
 =?us-ascii?Q?VF/dpXs7jBf2R2ExCLCGl6FBJsALwWUzmxdAoJTYlQ/MaXIDKxGsJAA2yr00?=
 =?us-ascii?Q?PizrOdLuHkXDdbf3eDBfDEK4E57pUmcSznZVu5+rxdufwo+xjvoeLQEa7ujG?=
 =?us-ascii?Q?Md4TyR2Y1NBgwPSOt5/IdAhJxSqxUqzUrd/7pTlrkGx72MKZim4xeoa55i0f?=
 =?us-ascii?Q?KL5xDh6g55GfEm35BZY08yMYsicnh6krLmzJGOZwYywnSe0vqCG3UN5L0180?=
 =?us-ascii?Q?NGOHW6YVqe+khVyXP7kQChCAIrN7fl382O96FS54ZyFC2tdJj2dFN49bIh4m?=
 =?us-ascii?Q?/jqUhEWBPx9PRVtezE37DCBYgJxXcZ3KgX3Jy/eaZNhYo7WZkwNm1XBKXmZU?=
 =?us-ascii?Q?cyM0DMzGbUkd3ra1ZvM3HjoTxS0rW8uJ2wZzHjXXZvITI2T0zv03syisvKvP?=
 =?us-ascii?Q?msvtWbbH4ZuIjXWjxfjtXdwa8DqTSZAr1jIxTQ00IzmdCAxIm7FQrr3OQNj7?=
 =?us-ascii?Q?zREDYgSXUQrCUIeIE2OWhYzxpNyDmWPQhI3XCImtWVFWtNQq70eQahsn71yI?=
 =?us-ascii?Q?3agcNny7aNt1CEahYdkpGRgYW8S2QNxZiFbHxZcN0P8Ad/yEne1mWDkhzD+K?=
 =?us-ascii?Q?QW7kwq/mcoSktN38uc3m2tMNeltiTiuHXQyqJFSdm9siktt9lQx1OxeDRNkC?=
 =?us-ascii?Q?/cQVNA7KASuJKbktP7Uv3n5h9EEC3zEr5BVlECUM0YkiBtT9zQDJwkV4pFLQ?=
 =?us-ascii?Q?mHvJJr/ZeAxRx5lewv2vMMU4jjy0ImsAs5bqqxp1?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BYAPR11MB3367.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 6d540928-43b7-4411-f621-08dafeb3bb8d
X-MS-Exchange-CrossTenant-originalarrivaltime: 25 Jan 2023 09:08:32.5121 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: TKalavS5Gi4hugXDM9eanb5hbadoQp8VihTXNTZ8rCQ7nBbTfYxC7Mk9kTnvn09Y2+f/ShJ6DI7vdK2gg8uv1Q==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH3PR11MB8154
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1674637756; x=1706173756;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=0fPzcuR+CRwUK8g1qQ+IbUsiZqcQFZm3PjyQY5s+jU4=;
 b=L2zX5keVI2YI4/vSK3xwIX6pV5BbbGJ4BcX6xOJIzgTs4FDbRwQuKuc8
 Nmv6k0Yg8S1ylFUymdnLuD6NrrCaKitGL0yBeQ1GZdr7QTbz7bsMvfBuE
 1u0dOsH55m5Q0YBm8pFZiMt6joEdrZnOI/Vt6hJVIws4uFh/qB2dd/cQX
 HgHnjmJmFupeAtdKXnnxLLh1SbWJT+z/4YovpfQTMwW4ASUiON36vPXtP
 zq4OTK+n1Ry1SA2dOtkhhHvFijpf97nkNhO1APxQhxXCkB8kBezOPpnrO
 IOC8zEVUnw1nncCDXgE8kwvlxMsvl63ouHYj/R5jY86/MuTC8dS+jrhjA
 w==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=L2zX5keV
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH 6/9] ice: Remove redundant
 pci_enable_pcie_error_reporting()
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
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>, "Brandeburg, 
 Jesse" <jesse.brandeburg@intel.com>, "Nguyen,
 Anthony L" <anthony.l.nguyen@intel.com>, Bjorn Helgaas <bhelgaas@google.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>



> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of
> Bjorn Helgaas
> Sent: Thursday, January 19, 2023 5:16 AM
> To: linux-pci@vger.kernel.org
> Cc: netdev@vger.kernel.org; linux-kernel@vger.kernel.org; Brandeburg,
> Jesse <jesse.brandeburg@intel.com>; intel-wired-lan@lists.osuosl.org; Bjorn
> Helgaas <bhelgaas@google.com>; Nguyen, Anthony L
> <anthony.l.nguyen@intel.com>
> Subject: [Intel-wired-lan] [PATCH 6/9] ice: Remove redundant
> pci_enable_pcie_error_reporting()
> 
> From: Bjorn Helgaas <bhelgaas@google.com>
> 
> pci_enable_pcie_error_reporting() enables the device to send ERR_*
> Messages.  Since f26e58bf6f54 ("PCI/AER: Enable error reporting when AER is
> native"), the PCI core does this for all devices during enumeration.
> 
> Remove the redundant pci_enable_pcie_error_reporting() call from the
> driver.  Also remove the corresponding pci_disable_pcie_error_reporting()
> from the driver .remove() path.
> 
> Note that this doesn't control interrupt generation by the Root Port; that is
> controlled by the AER Root Error Command register, which is managed by the
> AER service driver.
> 
> Signed-off-by: Bjorn Helgaas <bhelgaas@google.com>
> Cc: Jesse Brandeburg <jesse.brandeburg@intel.com>
> Cc: Tony Nguyen <anthony.l.nguyen@intel.com>
> Cc: intel-wired-lan@lists.osuosl.org
> Cc: netdev@vger.kernel.org
> ---
>  drivers/net/ethernet/intel/ice/ice_main.c | 3 ---
>  1 file changed, 3 deletions(-)
> 

Tested-by: Gurucharan G <gurucharanx.g@intel.com> (A Contingent worker at Intel)
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
