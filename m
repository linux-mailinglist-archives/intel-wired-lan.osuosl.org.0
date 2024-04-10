Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id B993389ED5A
	for <lists+intel-wired-lan@lfdr.de>; Wed, 10 Apr 2024 10:14:29 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 5E46360770;
	Wed, 10 Apr 2024 08:14:28 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id hTswFl4sUAiS; Wed, 10 Apr 2024 08:14:27 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 9A9F060761
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1712736867;
	bh=gLLBnJH/bri2B/D1Xqu9xRXBuieRBW2CSYwkqDF32o8=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=9VrTCFIF6Rz3J76bYYTvlUHSGrCwW0GQM0nOB/Ug+rGKIYi01u/HMfa6qBqHG2/dW
	 51SgU7Cpd9nQmEQDwU1OGRS7rroYCpo2Bx589PG336t3fO+kjYokREsb8thbbPAKLK
	 PCwqtfYMpezK46MmR3qi0trVi4U88Y1A1CIMJ8R0N1+TznYs9p1ewdOQNJXD7AyOoW
	 oq78W0TatsdGZ3w8lJe+pg42I2sCmg67qVBgG6NlCyk7fMCKbPnwJbDLs1uPQj3hxM
	 HMPq/NAWvAPBHnaoKmtEoBkcuZ0MwkhYQGIuWoy7iJthWHBDx45XttyzXYW/aojaMb
	 iWjuV/44aiY0w==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 9A9F060761;
	Wed, 10 Apr 2024 08:14:27 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 0B72E1BF3AF
 for <intel-wired-lan@lists.osuosl.org>; Wed, 10 Apr 2024 08:14:26 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id E9F1140661
 for <intel-wired-lan@lists.osuosl.org>; Wed, 10 Apr 2024 08:14:25 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 6OdSFSr0sqAl for <intel-wired-lan@lists.osuosl.org>;
 Wed, 10 Apr 2024 08:14:24 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.7;
 helo=mgamail.intel.com; envelope-from=rafal.romanowski@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org A929440653
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org A929440653
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by smtp4.osuosl.org (Postfix) with ESMTPS id A929440653
 for <intel-wired-lan@lists.osuosl.org>; Wed, 10 Apr 2024 08:14:24 +0000 (UTC)
X-CSE-ConnectionGUID: YPiWGK74QxG0NH5IISUTgg==
X-CSE-MsgGUID: xz+SJSOxQ7O/RJGhuYNoRQ==
X-IronPort-AV: E=McAfee;i="6600,9927,11039"; a="33490773"
X-IronPort-AV: E=Sophos;i="6.07,190,1708416000"; d="scan'208";a="33490773"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Apr 2024 01:14:23 -0700
X-CSE-ConnectionGUID: cbmONsCfRDmvVB4hjqkZMw==
X-CSE-MsgGUID: 4PFmcNcbQ669J7ZE8q4PLw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,190,1708416000"; d="scan'208";a="25252581"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orviesa004.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 10 Apr 2024 01:14:24 -0700
Received: from orsmsx603.amr.corp.intel.com (10.22.229.16) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Wed, 10 Apr 2024 01:14:23 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Wed, 10 Apr 2024 01:14:23 -0700
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (104.47.59.169)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Wed, 10 Apr 2024 01:14:22 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=oLK0Ix7UVS+yvUXKCDzMaH68J+foqU729+/nhw7/gKzKDeHpn0qSWOwCeP807TSg25wXFibzzW/g0Y7u4Frx3pAvFJU4CdCf+JSSYKQbYbu5Nlx2sxsaes1j8uLAfVDD3ei9ht9qfPGUSFHKENE1uR6Iw03yTc9TduAEB2+FfhkLFX//nKiDnAB3mWkA18hoD4pDsBSNHKlRT7/3ykce7wlEKLQW9WdEPMDCs0U/9BPxrfJNNTzvFlERH28J8zb7vF9JR8D6bhOziUZfhio/ybit+xz34lFUQV9owCZrTLjOO2tYp8eRyIIOeGyzW9Pt2UnBq25+D3ZwIrIfzxxrZg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=gLLBnJH/bri2B/D1Xqu9xRXBuieRBW2CSYwkqDF32o8=;
 b=I0npG7IGU+5tSydMONffRCMZIX22m225C7Pk31NdiHU9qUb/bQDuXO7OJVxP9nqkfzEO3eZsxYTeiW4i0I4fGAruJVZmwUsbSNr8BJxO2Aa4Ev5oSd2V/5VBLU/80xLNI5EjenH+Pradm4hd2Nvy4Yjpxchi1UWyj72T4jA6gOmU1v1XyWebpDJZYubdU220EpJj1HeT00ixHt8Up+hzx72jOwye/qvf/IzbgwM7YKUn9d2LvGv0P83awtX453huMo9PQDmvjpFgr7EiVqT/tom6FrLBnC7PUJ5u5qAeDj0oNkwDbG7ebgZcFhk6y1jTOn47LOxe1Ql/FvBQ4Nizxg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SJ0PR11MB5865.namprd11.prod.outlook.com (2603:10b6:a03:428::13)
 by SN7PR11MB7566.namprd11.prod.outlook.com (2603:10b6:806:34d::7)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7452.26; Wed, 10 Apr
 2024 08:14:19 +0000
Received: from SJ0PR11MB5865.namprd11.prod.outlook.com
 ([fe80::27b8:e131:8ea6:a4b8]) by SJ0PR11MB5865.namprd11.prod.outlook.com
 ([fe80::27b8:e131:8ea6:a4b8%3]) with mapi id 15.20.7452.019; Wed, 10 Apr 2024
 08:14:19 +0000
From: "Romanowski, Rafal" <rafal.romanowski@intel.com>
To: "Keller, Jacob E" <jacob.e.keller@intel.com>, Intel Wired LAN
 <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH iwl-next v2 1/2] ice: set vf->num_msix
 in ice_initialize_vf_entry()
Thread-Index: AQHafKI2LpifH574a0qQKCCPKItOMbFhRNJg
Date: Wed, 10 Apr 2024 08:14:19 +0000
Message-ID: <SJ0PR11MB5865A824BE65E44ECB9B96088F062@SJ0PR11MB5865.namprd11.prod.outlook.com>
References: <20240322214445.1653263-1-jacob.e.keller@intel.com>
 <20240322214445.1653263-2-jacob.e.keller@intel.com>
In-Reply-To: <20240322214445.1653263-2-jacob.e.keller@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SJ0PR11MB5865:EE_|SN7PR11MB7566:EE_
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: e4pzVUP9YYu28g7rbaHVC2rHD9guc6i+xU3vg/S1PfOH1MIvrY7c5S8XL9Xh1e5C/dfHro+XpQW8tyoy2rHGBmuDIE6BE2WXBsSDY/tWhG8dm5vPFjpMRAlwI+Fplz6v4bnfym9u+gHL95ZZOKr6EC5qBKKV5sgoX0kH54rQqsrgUm8vLtDQ+Qf6AvkihrO8vzqZnDCh/Nz9d3yERJaZc1n9MW+YqMpo2ZVu5TIhf6kSYKff5Uh9OD64xSsttfjUYV2TPy5/1mmi/CHbk76+G92b8EpU7C1ETUJBZRW7KVjXOvevFdVpFuMhUgZHVK+sdEvpqNmcgaKNx6q7unYAm90ynumFm7irLgPEUN0xZWk/e6mjsxOa/h3DImxEe5BcNg4XrF2yK0EmYQ6O/Fk2Bc2xaq/Mrul3Z+4orcXk9Gw1KF2oP8lpTK5K+A/HBnzhIWfPKeQrXwDMDSofTTtDf1S/hN3CHuVZ5gdNDW6/OWuA+7zJU5xuMp4h9TU3nV14pjKGCMZJK/KtcNKeUrH9kCPIzzrlGxsyxXtDSpRKb7hrKk9dLtMIH3K4S3k8Th58m2gDpGu3ZnLMZqmolcRaN/enyXM20EqH+U4kVSBu1I9TehjoOFi35SIAJg7unU4M3Cp3qePJ7Gs75IbjZzSrnpA/tDAnX6lb9cdET7vdHcQ=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ0PR11MB5865.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(1800799015)(376005)(366007); DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?hFWoIBwm3WdAmlFBIstzkTv92qVvQAzl9hsOdQArvz6E6XaYWjlLImZy+4W7?=
 =?us-ascii?Q?fsnXqRl9Ljp96ywEJGtAWgsUl4yh2kVsSCceEBi4EQ3VTGR2xzRMZcExNggj?=
 =?us-ascii?Q?RGtVOePE3Wct8SyMdgWFPf6v4ta76mw11wy+xn4jhxsq6N8+kl/55HoLol/m?=
 =?us-ascii?Q?6eZTCdY6eGob+FY0ZHBKFNL6mINkSmP9gdy7XQlO6z0vCpxFjLVvlJTl631R?=
 =?us-ascii?Q?5b1Zq2ntmThIEZisNL80Q1kGRZTtS8n3hHRwrMbmpW0iv9hjONp5Qomz2Viq?=
 =?us-ascii?Q?TGku34pUcrtvPpDYX0y4SuYL9mPkuiq8Dbdrat8i3l5Qnr46NtrILAEczDoC?=
 =?us-ascii?Q?KH5cvYYHSnTKaaasDqy9pN2FnTZJGHqJpsmFyR8QjgrdIoBdYxawEi9T3FZF?=
 =?us-ascii?Q?92ro8auYOqMy3UOXtp9S6rNwJ/TAs5JDvdavaXsUx8/rgL0+sDfrgTu7+i6f?=
 =?us-ascii?Q?+XGsuiLZeENQRhU147KNlm9yCJW6tKoB3m0/+gIjhxv+HusS9OdizwQkmSGd?=
 =?us-ascii?Q?2bbdPThVQCAbbHiEZvCv7O+17+Xnl9nzkVtvzztbiFUkbmoFOZU/NfqB778Q?=
 =?us-ascii?Q?31vDOcZlEHJBLEUguIqyKQ0lsYMnUFFiZ0fY2uZEFv9DAqNKvwpwRSa9yc4X?=
 =?us-ascii?Q?2jRHNkT2/vxBosJDrHoWFT/kf6RbejFB4dWQLdl0HHzfMQwa9huKpMd4E2QG?=
 =?us-ascii?Q?67F9892oZN1MaeYdbBQnGiBkMO/FtZxdGV79CLqtwZjxi7GURaZ0btWVlmY/?=
 =?us-ascii?Q?BAsB0kQIYZOyppjWm2jWeBEfCUKQJlCDiEf1A5aGkpd3ZcjJhRnb7h70FLNU?=
 =?us-ascii?Q?W9fywXOLMC9VFU8zGMjwfcMeKBJYTrptHpUeNiHQZKXeSshVVJTykEyqlABE?=
 =?us-ascii?Q?eXm9LV8BMCTDitdlt/RopDTE+SvGV1SqXzGg9O39/IWgsH3hZJ2CeImntR/o?=
 =?us-ascii?Q?aQqicplp24kGBMm1H4Cg0izZgwvcnpg9Sp1VoaDc967TzeNbYRUZKJ9/W/fu?=
 =?us-ascii?Q?GSR/IAuLFxKZKQ+19Yxht1wZHx5wIoFLk+0kEJxTg3KzZVcLlzBqQq4e4o6R?=
 =?us-ascii?Q?SkDMZm2geBheaXznCoiqjc2GQBuGeiWiMxIQ6Vn/tUXD09ea7NcRHZD6jLp8?=
 =?us-ascii?Q?mwQxIRVOS4Zbk7ukw5g0JyUtD+XVmqnjYLmFrDhl0UkXbPlKG0s9B2c4p6Sj?=
 =?us-ascii?Q?q6SE5zuEXs/kG6oQc5GhiLb22Kvk2+UAcaw6xzIf84P31KS1DHUe8jcmo/6h?=
 =?us-ascii?Q?oix+7WMeGcas83DqmMjYnQIJU6qXsMgPebheVIZWnzRdWivPWbV5Q3TQkkxW?=
 =?us-ascii?Q?FOdoQM5RmKRKOwjcYCkQwVoZ3/VqZ848QW4Zaxkb2ziSlEcaFQySe87nBjdi?=
 =?us-ascii?Q?sSOcor2nZc+vtQHbE5I2x5PoQ+cFAJq1cj6IHuGdEy4g6+hOEhfRezFlL73S?=
 =?us-ascii?Q?BGRAKwAwvTZx1aEXvWaPzQLDLxjkm8klZqotDh9irIzG+gvT8pVWYYx6cbCj?=
 =?us-ascii?Q?8h5XQzFszIkRq5tfEEYi3iq2naaUu+GRSQsE0AKa0rj3LDaNPIbhWGLH4W+T?=
 =?us-ascii?Q?+n7KZ8BI+nudPtG007iDSMFqDOYDl8Q4VQaFCwA9?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR11MB5865.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: bc8c1864-1004-408e-3d68-08dc593638a2
X-MS-Exchange-CrossTenant-originalarrivaltime: 10 Apr 2024 08:14:19.2850 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 3OD84Z2Ixq4iVC6WBdou/wgCr/FQYBtd4Tb78nqm+0lxfZscGC6MQvLiu58ra74GaENIj9lADnJVWfXetYxSltoBFTIRG6n8jaW/5FEjTw0=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN7PR11MB7566
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1712736864; x=1744272864;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=1s54r6/jppSgs4s/KwP8UoXNpJzCbsPB+pqAjy2rn+c=;
 b=ij8f0cAbwpfPG6F1LFQS0wtj6ykHwY0GSJnHPkEJl8c/2o2eLP3T3dss
 xCKNprQ4rbD3RPsoHheTGYESJMaDqj8Vrs+Ze6ycTQ1WYL+2Xo21eMQ68
 hQz2M6zp26o5bG7MYTdcAVHeJ5/F1eRo9THzA2e08TwqNGJOL9ts3XlJW
 1bqH1+ZTWOcouEceF/PfUYSON6wXiyzvrynxUPiuRD5gn9oThf33bvvVL
 ayuscHEOcX1mYgvVpuYxEm0UFGrb+hA76zBdGk9V1ZIcjAO/7fPEAEusk
 lnntzEm1/i+VoCZy/e/ghuNQY0ZSvz/Lzrdjq4secvKAB/ewSPZ6k1yQs
 w==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=ij8f0cAb
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v2 1/2] ice: set vf->num_msix
 in ice_initialize_vf_entry()
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
Cc: "Keller, Jacob E" <jacob.e.keller@intel.com>, "Nguyen,
 Anthony L" <anthony.l.nguyen@intel.com>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of
> Jacob Keller
> Sent: Friday, March 22, 2024 10:45 PM
> To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
> Cc: Keller, Jacob E <jacob.e.keller@intel.com>; Nguyen, Anthony L
> <anthony.l.nguyen@intel.com>
> Subject: [Intel-wired-lan] [PATCH iwl-next v2 1/2] ice: set vf->num_msix =
in
> ice_initialize_vf_entry()
>=20
> Commit fe1c5ca2fe76 ("ice: implement num_msix field per VF") updated the
> driver to allow for per-VF MSI-X configuration. The initial defaults were=
 set in
> ice_create_vf_entries(). This logic is better placed in ice_initialize_vf=
_entry().
> Indeed, that function already sets
> vf->num_vf_qs, as well as initializes the allow list via calling
> ice_vc_set_default_allowlist().
>=20
> Move this logic into ice_initialize_vf_entry(). This makes the code clear=
, and
> ensures that these VF fields will be initialized properly for both SR-IOV=
 VFs and
> the upcoming Scalable IOV VFs.
>=20
> Signed-off-by: Jacob Keller <jacob.e.keller@intel.com>
> Reviewed-by: Jesse Brandeburg <jesse.brandeburg@intel.com>
>=20
> ---
>  drivers/net/ethernet/intel/ice/ice_sriov.c  | 5 -----
> drivers/net/ethernet/intel/ice/ice_vf_lib.c | 5 ++++-
>  2 files changed, 4 insertions(+), 6 deletions(-)
>=20
> diff --git a/drivers/net/ethernet/intel/ice/ice_sriov.c
> b/drivers/net/ethernet/intel/ice/ice_sriov.c
> index 65e1986af777..5e9521876617 100644
> --- a/drivers/net/ethernet/intel/ice/ice_sriov.c
> +++ b/drivers/net/ethernet/intel/ice/ice_sriov.c
> @@ -831,11 +831,6 @@ static int ice_create_vf_entries(struct ice_pf *pf, =
u16
> num_vfs)
>=20
>  		pci_dev_get(vfdev);
>=20
> -		/* set default number of MSI-X */
> -		vf->num_msix =3D pf->vfs.num_msix_per;
> -		vf->num_vf_qs =3D pf->vfs.num_qps_per;
> -		ice_vc_set_default_allowlist(vf);
> -
>  		hash_add_rcu(vfs->table, &vf->entry, vf_id);
>  	}
>=20
> diff --git a/drivers/net/ethernet/intel/ice/ice_vf_lib.c
> b/drivers/net/ethernet/intel/ice/ice_vf_lib.c
> index 21d26e19338a..c51e2482cad2 100644
> --- a/drivers/net/ethernet/intel/ice/ice_vf_lib.c
> +++ b/drivers/net/ethernet/intel/ice/ice_vf_lib.c
> @@ -992,10 +992,13 @@ void ice_initialize_vf_entry(struct ice_vf *vf)
>=20
>  	/* assign default capabilities */
>  	vf->spoofchk =3D true;
> -	vf->num_vf_qs =3D vfs->num_qps_per;
>  	ice_vc_set_default_allowlist(vf);
>  	ice_virtchnl_set_dflt_ops(vf);
>=20
> +	/* set default number of MSI-X */
> +	vf->num_msix =3D vfs->num_msix_per;
> +	vf->num_vf_qs =3D vfs->num_qps_per;
> +
>  	/* ctrl_vsi_idx will be set to a valid value only when iAVF
>  	 * creates its first fdir rule.
>  	 */
> --
> 2.44.0.53.g0f9d4d28b7e6


Tested-by: Rafal Romanowski <rafal.romanowski@intel.com>


