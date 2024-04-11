Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id EB5368A142A
	for <lists+intel-wired-lan@lfdr.de>; Thu, 11 Apr 2024 14:14:56 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id A473641E71;
	Thu, 11 Apr 2024 12:14:55 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id QYFumlSu6OEI; Thu, 11 Apr 2024 12:14:54 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org A55C141B90
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1712837694;
	bh=XKPG28UAIeLaALdBON/xPS/zk0UTLV1K8Q0FqBxR4fA=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=OCDZPiJRCkfWP/OoMozQRajpE03GigE9Ke/GM84olAcvfm0KNR8id+3sQT9U90YDY
	 i15sSwaE07EOajKscJSvzqqB9qbmFEdF4Yi9cNF026aSWPG/UuC8Kai0AQXsHF3pSf
	 a0Rjb1TozhbdDyKfONauZRrj+TPWXIsRCEPiWqNUY8gkpmKWnUn3ZpGzcasabiWIN9
	 qumKUwu1iaTEK3HpWTS6eRRnhwGT1WtpkargSaHqzOLDKTB15teoUSkcQyejaIochU
	 WvfPRPSWfJ3i8kVoi6UOK1GUmksyrvNf0nI5+n5ylYIYHOq5HxS/KNXRyzP/F44NLa
	 6drPI2U8z5P3w==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id A55C141B90;
	Thu, 11 Apr 2024 12:14:54 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id D5F0A1BF2F9
 for <intel-wired-lan@lists.osuosl.org>; Thu, 11 Apr 2024 12:14:52 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id C2C3260862
 for <intel-wired-lan@lists.osuosl.org>; Thu, 11 Apr 2024 12:14:52 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 0kkE2y_bnmHe for <intel-wired-lan@lists.osuosl.org>;
 Thu, 11 Apr 2024 12:14:52 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.12;
 helo=mgamail.intel.com; envelope-from=himasekharx.reddy.pucha@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org EBC6D60749
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org EBC6D60749
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by smtp3.osuosl.org (Postfix) with ESMTPS id EBC6D60749
 for <intel-wired-lan@lists.osuosl.org>; Thu, 11 Apr 2024 12:14:51 +0000 (UTC)
X-CSE-ConnectionGUID: whzbElTJR+muzAwlkDMaxg==
X-CSE-MsgGUID: F8dv5wjCSY+UyqcaEsEllQ==
X-IronPort-AV: E=McAfee;i="6600,9927,11039"; a="12020893"
X-IronPort-AV: E=Sophos;i="6.07,193,1708416000"; d="scan'208";a="12020893"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Apr 2024 05:14:28 -0700
X-CSE-ConnectionGUID: 66d7x4ejQFedMwQL5cp88g==
X-CSE-MsgGUID: eW5UYAE5T3abavLpvV8ZXg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,193,1708416000"; d="scan'208";a="20929574"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by fmviesa009.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 11 Apr 2024 05:14:26 -0700
Received: from fmsmsx602.amr.corp.intel.com (10.18.126.82) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Thu, 11 Apr 2024 05:14:26 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Thu, 11 Apr 2024 05:14:26 -0700
Received: from NAM04-BN8-obe.outbound.protection.outlook.com (104.47.74.41) by
 edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Thu, 11 Apr 2024 05:14:26 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=YXkIiJfu1wQaP4Ms8fDHg+LbV1Ej5+jJ9KOJNYBUdhJN7d8TpSY6B0qBMkiEzsW+//+Lhl3PLAO4IGuaN0YOrxVq2nsVxf/Vd1hGbb0e6ORuwSrSWzffYJMHA0F6xerSGfRd3hZHkfbxXLiRCdrf41NLYrqTTP1Gv/xxEvjS7Vi8IJhf09bEdLJWLELv4RWKiWb79owaMLkt+QfBrKp9TjPhgXeD+NameAlqac9JIpXDDLR94UyxWhZCoi/qe58OxU35BBvlSXcUaXr5o0TifOyvQtrzA2aZ7EwKabkXRYYGQVIU4nMmZkGOxh2lK/OG53yJUJ0ikz2b8b+4jPYxUw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=XKPG28UAIeLaALdBON/xPS/zk0UTLV1K8Q0FqBxR4fA=;
 b=D9sKL9DU0WSbjeqLGA1MC6XSz9MdxImocPtjc26SASVrLBnnk1XPoCKCPfhhejGK4WUJzEujyUvB2RMfU1IiIQgZsJ6V/xaBEwtj882qlX35N9uSwGiQDz7eRSX9lAOE+GLWkeAHkm+Bhj2VwvGtuf5Q3sHj8IdnXyaKwMsym9D+zMBWEQq5ocBHAQhxWxw3wIhqI8Q/ifxnxYrVfBWzs58a6nHNxjJV3kGWl8W8sYRCb83IdSimcrFsXMx58olMrJ42gxKrzZi/YZI1pKQZy35hVz2kgA23DUYtA/xfH3mMRiD2yhVshfd1a3t6+PZ3mSQNlPO7FH58DRtV8w3kRw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CYYPR11MB8429.namprd11.prod.outlook.com (2603:10b6:930:c2::15)
 by DM6PR11MB4657.namprd11.prod.outlook.com (2603:10b6:5:2a6::7) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7452.26; Thu, 11 Apr
 2024 12:14:23 +0000
Received: from CYYPR11MB8429.namprd11.prod.outlook.com
 ([fe80::4434:a739:7bae:39a9]) by CYYPR11MB8429.namprd11.prod.outlook.com
 ([fe80::4434:a739:7bae:39a9%2]) with mapi id 15.20.7452.019; Thu, 11 Apr 2024
 12:14:23 +0000
From: "Pucha, HimasekharX Reddy" <himasekharx.reddy.pucha@intel.com>
To: "Polchlopek, Mateusz" <mateusz.polchlopek@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH net-next v9 5/6] ice: Add
 tx_scheduling_layers devlink param
Thread-Index: AQHahZvB9AgupWLHVEe/0XViGRMlyrFjB7ZQ
Date: Thu, 11 Apr 2024 12:14:22 +0000
Message-ID: <CYYPR11MB8429C68B610E3FBD13E333BBBD052@CYYPR11MB8429.namprd11.prod.outlook.com>
References: <20240403074112.7758-1-mateusz.polchlopek@intel.com>
 <20240403074112.7758-6-mateusz.polchlopek@intel.com>
In-Reply-To: <20240403074112.7758-6-mateusz.polchlopek@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: CYYPR11MB8429:EE_|DM6PR11MB4657:EE_
x-ms-office365-filtering-correlation-id: bbe0d3cb-a516-4e6e-1141-08dc5a20ec4b
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: htbrBN1f9ERrM4YhAke5EwvE8q7UN9RF9VHBavANR+/1DyFxDCQ7AmFyr4y7w6Tzn3E4L42kFXPKspjgSuAl7Q4jtF1XyAuOAycNyU8vcrNOPL84e0hbbdY6bxv7NXrnyDiu4pT8QPwIB3AhJ1foC1TIqNuzG2HaQAbwxF1wk4+DNm1rdWIPfw/ztDNsBM1yVZDBhBCpLZduSGAFNF9Z/DFCGQUVquiQacWx1oKcJhH+yKjA9VjJb3PCwhXaX/b34hwOWeBT+Ad7/btQTj+Vwje5S3Jn4Y705KwyckoV4GEB4+G3V7bfSEYNWoHrQFfrYSvAjoPM/YfKK3RPDQIuUQpVtPIW+VQCPxsIfbzvyvJ9NPWd4cIVWQoGGscPJMVr+b0amD4hqYtoBRg8cxhRCrnR9HKBC/2zRAnlmzT2QYujiUtWs2TlLI+h0OoViA16byXKDixYwHBXONIQEFF2wTG8q8f4vx+bLi5Svxg1yX/1lPmpbn+NJt0/jYwxzvrdZZqFjOERvTNqkn2F5ljjo4/7bqIntvTPjXmX30Zmt2OxEfAzpnN+u/jP19YwEaYXjHoq3emt50j+wYxGEafP+GS3lTvJ38ID0NvdkSuVJpXwC8KYOhVeS65XuFD0ikbXwHVvKJ2HhOgKt/k9qC7CjoemFyCMkdOnZNy2c4CZsdlsI+voTlyh9rM/QTqY3mw7Pji4WEQx9kcmirtKH63OMWfszMQQTVomgaShggdJp4A=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CYYPR11MB8429.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(1800799015)(366007)(376005)(38070700009); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?AnbEJQGYem5Ope5lFutgxqEOhxxlGRPGj5Tae2vx6v/+RWqLb0FNmzS4l1Eg?=
 =?us-ascii?Q?Ql+vEVW5sM2US9SkeoQ+YSTq5ZJrMPfYv6wPiP8wF4vawszCriF1MPuC+QWj?=
 =?us-ascii?Q?XmCvGewNqJp5KwbgHlTHAUtMVf3/2YYAVOP14S66wl93poSVYNSOefqmtaFV?=
 =?us-ascii?Q?sqfK2ax83eSqpFu+cKOnpA7Y56p7H+mBaRkREGkk5f+0/xlQQrkJHEVEQF35?=
 =?us-ascii?Q?rC5PLAWHxFcnzxXNIsPbI4s3lq9S+MELvBXg+B7GUZCbwb3cjvHY1hjbz6A2?=
 =?us-ascii?Q?EiPttlgclft2JpfV9QuWtNPf1B3atiOfBbtl28JiaVvaFve3WfWt/uBk7Giy?=
 =?us-ascii?Q?MNxlH2N0NJ/1VSwwlWtBFNr1KyfTLhMSTG5NK6ZgXRS+4n3EYVKUiDp7lptp?=
 =?us-ascii?Q?Gzc7dV9pMflu0yiMJoqO+3GwqBE9L4OLqAbxORNQbd431ixHD7v+angWf/jL?=
 =?us-ascii?Q?mgb7T8MUPwa2LA6LN9Ln/szGMP3haoqYiubVzeRHQsXIXv1/8aLLACoREd8D?=
 =?us-ascii?Q?auXeNsYfTZcHJxuSsoFtGLxPOLwoZwVCBbRqXS7zf+RdbEi+0IvYYiVk7Inn?=
 =?us-ascii?Q?fTZH2FVjx8oiZU5pAI5WlIRIkQYHfbFUlqpAYr/jPAnsLmz/Ntt0QmA9VWb/?=
 =?us-ascii?Q?hzZHl8u0nqBN+bq40zyAnl5JX/m5OIN9HRvhfHiqOSsYRM0IixXDblD2stBa?=
 =?us-ascii?Q?FiDXq20jpUlizc44iSzYYLi1mV0Jrtdo1lvmGaKzLkPwRG86h+xIkb28aHMu?=
 =?us-ascii?Q?zbUrBdmALp0c7nAeKQSsnxMGvYbsStcEYwuSDsErQXaHKBXEGysbQ93sS5Qm?=
 =?us-ascii?Q?kRb69AJX/mcfmA442qskZ3Adla8kqXG+A9aitA544RRTbTo+gX8gqacyqold?=
 =?us-ascii?Q?XKf+cDq8rW2tQXHN7EYs13wbdzqmETPtIriVJjTT1Ts6V1tVu9pA6E3pgMR+?=
 =?us-ascii?Q?fPxRDy/Lm/1/uSwhltwYZp7LfJbEs2UBjM2yy/pCzqcitBVl6nVyeGWBuz6u?=
 =?us-ascii?Q?nJfWLqRh6dc6R41LV1GhHYjIrL+43DCZ6QKWL9lSIoueeBEihLpT1TaU/2D+?=
 =?us-ascii?Q?rDI5HmXD7ZaXwYl54PL+iIUiPRmU0HYQFuvGYdhcKPgdDFLMsMBhkOZeLo2j?=
 =?us-ascii?Q?PMrEd0PHPOcR1UnoDS9Pq7hfgNBs6/MqvCMc3/fVps4gLYFZPR9ek/8DfGDL?=
 =?us-ascii?Q?da6IX9HiUrOTzbPnDVtv3NKCSSczN3mjt8qL0O0zk3qXfMZQLAAMEYHtmWwH?=
 =?us-ascii?Q?3RyLoxcxh4IgzoYYroIyiPJk32/UfQjhWlCF888gg/TcNxk5CxSQHX/X8Yyn?=
 =?us-ascii?Q?MukMUBCtSqJXAFkidCE5XxZJF20oDIFcjvtCiptQIXbR8TkIwjl9+EinqBm2?=
 =?us-ascii?Q?Ogaax76NDDRTxj8wkXdmKJajtGOW0QyXuqE+D8du9S4OrF+J8GzK1wlSAMwP?=
 =?us-ascii?Q?pwyY35hgSV19e4EiIBJL9KJkQuB8LK7mVtKOi0lP3m8j/9Rp3Ld8FG58sHc7?=
 =?us-ascii?Q?Ofc1m/48pGYME8rhru97juUbCf1m65ldlL4Tie0vcRpHuPM3kB2OtxnpTyc5?=
 =?us-ascii?Q?IYchxmFmY31CO/gNYeTlPolIc55+irIUlANzrMbEDmIF2SiR2eivWHYFnIdR?=
 =?us-ascii?Q?2A=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CYYPR11MB8429.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: bbe0d3cb-a516-4e6e-1141-08dc5a20ec4b
X-MS-Exchange-CrossTenant-originalarrivaltime: 11 Apr 2024 12:14:22.9533 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: m7X8Tegv40Uw+PF0XRlKX/WtkWnL4i7PQsIvON2PoXKFg4OMJRaoOrX+zoC03VHb33+4KUZ7Jbi+VBRZyMiU/lg612JvSiaiXuOfBwC2j/XXyoFSkkHxIe45PIR7h4gZ
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR11MB4657
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1712837693; x=1744373693;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=rdQurFK1+VMTWRWWXGQ45lMdhzkFhMEhWg3hjAqnIHg=;
 b=GIGC1+4D+BEwbmqHPe0Vbd6B4TmjHIF5SnbEMj3Htlx8fYH1qWgYNeEd
 QvfjeD/XWXQQWThRZoGeZseE0naVvIjIt0BpK7YsXtweDB8W8wkOvax5a
 xxowEqtdmWWPQTLN5tqBZBOrXtm/DkGLuJIPJ3ht2qOHsuSsWT2gg/Ie5
 u/tYcyarlWEQH2kb0E6duxdldsOE5VYpgI6tbHvS10M2a7Oo0NncEam3E
 VikUeBgRquOp6pJzadG6HBKSz76GJZjBr+BPz4bqrEsZ8Z/YVa4lghumK
 67XPmUJRcnGcoH4+/wYGC4VUyda/a5mx7GSlGv2A7XOKhGzsGexMdzFD3
 w==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=GIGC1+4D
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net-next v9 5/6] ice: Add
 tx_scheduling_layers devlink param
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
Cc: "andrew@lunn.ch" <andrew@lunn.ch>, "jiri@resnulli.us" <jiri@resnulli.us>,
 "Wilczynski, Michal" <michal.wilczynski@intel.com>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>, "Czapnik,
 Lukasz" <lukasz.czapnik@intel.com>, "Raj, 
 Victor" <victor.raj@intel.com>, "Nguyen,
 Anthony L" <anthony.l.nguyen@intel.com>, "horms@kernel.org" <horms@kernel.org>,
 "Polchlopek, Mateusz" <mateusz.polchlopek@intel.com>,
 "kuba@kernel.org" <kuba@kernel.org>, "Kitszel,
 Przemyslaw" <przemyslaw.kitszel@intel.com>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of M=
ateusz Polchlopek
> Sent: Wednesday, April 3, 2024 1:11 PM
> To: intel-wired-lan@lists.osuosl.org
> Cc: andrew@lunn.ch; jiri@resnulli.us; Wilczynski, Michal <michal.wilczyns=
ki@intel.com>; Polchlopek, Mateusz <mateusz.polchlopek@intel.com>; netdev@v=
ger.kernel.org; Czapnik, Lukasz <lukasz.czapnik@intel.com>; Raj, Victor <vi=
ctor.raj@intel.com>; Nguyen, Anthony L <anthony.l.nguyen@intel.com>; horms@=
kernel.org; Kitszel, Przemyslaw <przemyslaw.kitszel@intel.com>; kuba@kernel=
.org
> Subject: [Intel-wired-lan] [PATCH net-next v9 5/6] ice: Add tx_scheduling=
_layers devlink param
>
> From: Lukasz Czapnik <lukasz.czapnik@intel.com>
>
> It was observed that Tx performance was inconsistent across all queues an=
d/or VSIs and that it was directly connected to existing 9-layer topology o=
f the Tx scheduler.
>
> Introduce new private devlink param - tx_scheduling_layers. This paramete=
r gives user flexibility to choose the 5-layer transmit scheduler topology =
which helps to smooth out the transmit performance.
>=20
> Allowed parameter values are 5 and 9.
>
> Example usage:
>=20
> Show:
> devlink dev param show pci/0000:4b:00.0 name tx_scheduling_layers
> pci/0000:4b:00.0:
>   name tx_scheduling_layers type driver-specific
>     values:
>      cmode permanent value 9
>
> Set:
> devlink dev param set pci/0000:4b:00.0 name tx_scheduling_layers value 5 =
cmode permanent
>
> devlink dev param set pci/0000:4b:00.0 name tx_scheduling_layers value 9 =
cmode permanent
>
> Signed-off-by: Lukasz Czapnik <lukasz.czapnik@intel.com>
> Reviewed-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
> Co-developed-by: Mateusz Polchlopek <mateusz.polchlopek@intel.com>
> Signed-off-by: Mateusz Polchlopek <mateusz.polchlopek@intel.com>
> ---
> .../net/ethernet/intel/ice/devlink/devlink.c  | 172 +++++++++++++++++-
>  .../net/ethernet/intel/ice/ice_adminq_cmd.h   |   9 +
>  .../net/ethernet/intel/ice/ice_fw_update.c    |   7 +-
>  .../net/ethernet/intel/ice/ice_fw_update.h    |   3 +
>  drivers/net/ethernet/intel/ice/ice_nvm.c      |   7 +-
>  drivers/net/ethernet/intel/ice/ice_nvm.h      |   3 +
>  6 files changed, 191 insertions(+), 10 deletions(-)
>

Tested-by: Pucha Himasekhar Reddy <himasekharx.reddy.pucha@intel.com> (A Co=
ntingent worker at Intel)

