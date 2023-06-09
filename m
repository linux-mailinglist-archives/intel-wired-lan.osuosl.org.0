Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id F058072A0F1
	for <lists+intel-wired-lan@lfdr.de>; Fri,  9 Jun 2023 19:10:40 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 7AEBA41908;
	Fri,  9 Jun 2023 17:10:39 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 7AEBA41908
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1686330639;
	bh=XtOnow2lVdQCHbhqZMAcSaghvJO5+n7DqOy3jOTjIUQ=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=wuLX+wSS2cDwbbVqL1IELSfAq8ukLw60eE9eyg3Z/MW6BA5Zu77kVLhL8qqgeBymM
	 NKMNx26E00fXkNzEZuupXEROASBZy4vgR2cDNVXMKKmj/IB1iYU1xETVCrhZllTPjp
	 nltsGi3fRFBCXOZD/Hs7DrIHwVY/ytxcBGXEV3I7oZ318Jjush56zm8b2cz7uDIysP
	 BncbdvME+e8ha1zXW04np4NFnO8FCpCSmzRZZTnwUV4PGxF+fMx/7NUxLhg5+oN24a
	 l7W7ZHJVFq8xRpAMgElsjD9Xs4zcoTxZ0DR+59OxycX/jj3xCaYjmdlYAs1YUb+c2H
	 U3K+5HhkNB61Q==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id nS5wf0cFewFF; Fri,  9 Jun 2023 17:10:38 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id BAD05417F1;
	Fri,  9 Jun 2023 17:10:37 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org BAD05417F1
X-Original-To: intel-wired-lan@osuosl.org
Delivered-To: intel-wired-lan@osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 86AC71BF37B
 for <intel-wired-lan@osuosl.org>; Fri,  9 Jun 2023 17:10:33 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 5E21D417F1
 for <intel-wired-lan@osuosl.org>; Fri,  9 Jun 2023 17:10:33 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 5E21D417F1
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id h7u1Y8wEPq_m for <intel-wired-lan@osuosl.org>;
 Fri,  9 Jun 2023 17:10:32 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 7F5FB40127
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 7F5FB40127
 for <intel-wired-lan@osuosl.org>; Fri,  9 Jun 2023 17:10:32 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10736"; a="386012074"
X-IronPort-AV: E=Sophos;i="6.00,229,1681196400"; d="scan'208";a="386012074"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Jun 2023 10:10:32 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10736"; a="823133184"
X-IronPort-AV: E=Sophos;i="6.00,229,1681196400"; d="scan'208";a="823133184"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by fmsmga002.fm.intel.com with ESMTP; 09 Jun 2023 10:10:31 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23; Fri, 9 Jun 2023 10:10:31 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23 via Frontend Transport; Fri, 9 Jun 2023 10:10:31 -0700
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (104.47.59.176)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.23; Fri, 9 Jun 2023 10:10:31 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Ptjx+dovpLlaeMlxN0jBRoxJsNCX4mt+W9HBOIHHrGMpw8kGzJVdhOtloZI06zAq9tPfgNdEPnPIEStrKKFK0cM+nEzPrhPGbP828LVDDC2WVTg59rRtuqAPfSM4MvbzmK9pfAN0w7idAWo6pQCEpPdfj3QDcpVEg9sYg9aqzSmSk/v8XAIwFH47mksAFPEVIXJ1wVcPhVZKDVuJpVP3kAy4rZfsr9HcwL278d2+ssHU8sM8BBFBnGwbBHR9Dtk5CT7fX+LJvGxfPw+ToybfcpUNh6T2b+AjCZo6UA8yPY9ZdL7p05/0fZe9uSGGhbDbHvgKmlc0VDbYyZ4gLgK6kQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=UVIJy6+bQdD7ulUAGCeGSOT0Pp6I02wPjgfpdIkBivw=;
 b=TnLeV/v+fzSDpChyvlNPcCBQnDDj8vw0Bm6EMwbJhxwPXIVymHhiv3y4Qqg43STcQ74L1I4EXZYfM8GxfguPzl8tEF0eKswg4sHfGiVY2Pl9kgtRFDycCZbZk0xjjLGQAHWP9If0ANMp5vOKeXTm8o/D2e/4U5MUyC8opp/G2UFXdHBXcR5E6qHSV10V2AeEFgZzkpjHgS/xyIASWn7dSrczwTo+htxB5McGzdUYeOtUUOta4e3FBoXHL50sf4ncorZdBlbJIbA/9lJKL8UzlrquKGGvgi7qTBDTryPKatB537MrcD7xtPi3aiWrH93qr4SOZ1naH16b+W2KB9FSyA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SJ1PR11MB6180.namprd11.prod.outlook.com (2603:10b6:a03:459::14)
 by DM4PR11MB6144.namprd11.prod.outlook.com (2603:10b6:8:af::17) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6455.41; Fri, 9 Jun
 2023 17:10:31 +0000
Received: from SJ1PR11MB6180.namprd11.prod.outlook.com
 ([fe80::dfd2:5a47:bfeb:aa2e]) by SJ1PR11MB6180.namprd11.prod.outlook.com
 ([fe80::dfd2:5a47:bfeb:aa2e%4]) with mapi id 15.20.6455.030; Fri, 9 Jun 2023
 17:10:24 +0000
From: "Zulkifli, Muhammad Husaini" <muhammad.husaini.zulkifli@intel.com>
To: Vladimir Oltean <vladimir.oltean@nxp.com>
Thread-Topic: [PATCH iwl-net v3] igc: Add TransmissionOverrun counter
Thread-Index: AQHZlCSRIAJsOJ7ZBUaDwOZZweIG1q991t1IgAToprA=
Date: Fri, 9 Jun 2023 17:10:24 +0000
Message-ID: <SJ1PR11MB61804C9DEFF8D2843E1B10D1B851A@SJ1PR11MB6180.namprd11.prod.outlook.com>
References: <20230601005925.30473-1-muhammad.husaini.zulkifli@intel.com>
 <20230601005925.30473-1-muhammad.husaini.zulkifli@intel.com>
 <20230606140230.dyglrbenr3geu3ha@skbuf>
In-Reply-To: <20230606140230.dyglrbenr3geu3ha@skbuf>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SJ1PR11MB6180:EE_|DM4PR11MB6144:EE_
x-ms-office365-filtering-correlation-id: 65f4da54-c107-41b5-891e-08db690c6a3f
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 9C/2tkakIYM9yJtB9MMx4TdbSs5DjR3n2kyA72oWN5wHwdh6QDMwq7pIqLo2F0yEUn2SR6dB4Urfh4n/E2fZwbCjnOSPOEMifDZHG6QIf1wF2yk9FbMwSahdv6Cb3fIQjjDmVe5QawLeitf3hxpSsb1BmNRzYi4afrAUCuHWIgzfqptWN9XZfbf5Df+FB0WRrl025jwDbjzVMUFuQwx+Y6AsrIT4rRbp8zCuu+dGJX3ceEoxRfb1unnU9SKcyyP4qbTVgRjw5E40RO5VTI8anBEg/zZjiDEq56nodNlwM8mchOqHxROvMSWRBhJ+M1KQ/wX335ITzMsjaVzqtG8fpl612wJJ1SHt7yEXA/Zsrr29HrEbaGU5ewJK/Sr8HPr2CWwFcED603jHKPbK619vCW2RYxrZMahe7EcHqi/Hf51PTUEkWYdzHmXpLSmUFQWcLFAzOwdMDzuxPOg7O9XqpKj30vl8FoO7bp4w2tdRnf5yZ36xzB8VrUzMQHEzvINTAIkgoMoe+7fB5+0Yt6AIxqjBS9accrQFRXqBwDZqZ71YUUJ382WcStwBlOSEO4KPXdFnQLdXWMjl7gRk4hY7vwrOjkg0GFvrQ0l3ImqR9wpzChvwEDsDuBHHaLPSwtqk
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ1PR11MB6180.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(366004)(346002)(136003)(396003)(39860400002)(376002)(451199021)(7696005)(316002)(41300700001)(86362001)(82960400001)(186003)(26005)(38070700005)(6506007)(53546011)(83380400001)(2906002)(33656002)(122000001)(55016003)(38100700002)(9686003)(8936002)(52536014)(5660300002)(8676002)(76116006)(66476007)(66946007)(66556008)(66446008)(54906003)(478600001)(64756008)(6916009)(71200400001)(4326008);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?CMSaUUpVs6QpQLCqCDsj4CdPtT/bLxvNfgLkdVMESoLe1QcgDOQ5k/QN07Mt?=
 =?us-ascii?Q?yBxnPnn02q41F2vLLE4FZkLsLgJ9X55xPUzhT0NhFyS6xjz5OfP2Ay1KJhPJ?=
 =?us-ascii?Q?qbJ7VhKe2XHl/phndUDhh5jOUmmUMhjH6IiOXlc2NEnw0/y4zPuTGr6MYHkX?=
 =?us-ascii?Q?oR243gGnKV6a61YETkB4Fpyq2Cz3U1iX95+kMn3J4qf9hu89FDiTM+tSl8NC?=
 =?us-ascii?Q?QwYLattQYNh+HqArANZPgcOBJDqEwUSVOdMMsKL4tuJWb0vnT/2HqQcPzsUr?=
 =?us-ascii?Q?qDmQSyRmGTVbpjDrpIs5/cVgJ+2PVgyJ6zLg50jjoewMHIAlpFXLUlYKf3yt?=
 =?us-ascii?Q?SA4pOo1wAtHGgF/wy+E0D4O0N5c1kRAEX25UgMrrs+yXEKSZjnIKALJWNDpy?=
 =?us-ascii?Q?W0JjFiH01Wvt3b1Ok5D1XcpTLoQwL1wibmJIs9hXF3kX9bZn1njdKg1mHssE?=
 =?us-ascii?Q?5Eu84vsAWIZKqAjlGB6awy0eFqcW+30xF+UWzCxF8HTlzdvIW39m/SgehxpN?=
 =?us-ascii?Q?QyEJ+sMU+vOOXTsBrCd9n8EXDpK3H2bGH/NgPTbVvfKXH7thCi7PofvSH4YO?=
 =?us-ascii?Q?A17S2iijgsnsFqjSFP3JQwVBH+oek6c7H40zbyzV4W3BiTz/QPl2zskEATZ7?=
 =?us-ascii?Q?nSKbs81NXMFi5a/yrmafwwX/KkuvrW5zbz5Zv1Dw1kvB4DyoR6ycKKlfQE8J?=
 =?us-ascii?Q?dYJMB/VGsFMB6Wv6lmRUOYPuZjoN3QmSQWWQlt9bhAkzBeMpdDJ/cjg/d/g9?=
 =?us-ascii?Q?gQ3XtehjVort3XOcGJ/gTB0kuPsVFjWkvyq4bMI2bOeLKHnB0VzEU8tH8vYg?=
 =?us-ascii?Q?2QDr2UiaRLv91Ep0LEIB2wPZDQuBehwE4x29NKjYTWI+Yr99M41F4gS//uI+?=
 =?us-ascii?Q?1CiNdiEqjVrAE4tJFFLFlQ0OCJiutCvpMkutUDQyDViz9sbK1jjwgHqi56uE?=
 =?us-ascii?Q?2HzYfrKOS47VUjCBoD2GhGMFaJlzJdDxUbssTneQiiWMsTgcQxRc6j9N+Mvs?=
 =?us-ascii?Q?ukMZnQGjBsnenD91HH8j9HBtGbk3nUjgkngtn7K1dj4Ymopiga5OnQDPwniy?=
 =?us-ascii?Q?GVTVRJ59qZamPGsrh+4tlYj7dHrp9nm8THCxorh2Hc3gS9ee66qt47jbNTTt?=
 =?us-ascii?Q?u4uoda0XuzO1OMu+1jVlUHitDo4o1hu7nlsd4XYhKtWvSmsrFFe8TqCGPOfk?=
 =?us-ascii?Q?Hqw48y/oq2W/ttMpxq9oCmSwNrFwaeiTgtJuVh3K3muwnqBwhQFhYr/I88Ro?=
 =?us-ascii?Q?WME3zGjAnEnW3CGlyKlzGwCwgyJ68ilLgFhV35ioYOO6RPPWpIi+VbkL2m3E?=
 =?us-ascii?Q?ij5c6BRnut0STZLmLWIIIHxTmE0vp82H/ODRwQHNIN9M5JQu4xAKAnB2rghP?=
 =?us-ascii?Q?00++5Pcr0qA/7WzKK66tJ8Je/Lk8aC9jtYMSKxuatliao8+fXbIulQVuk6Qx?=
 =?us-ascii?Q?F+zWvSFzGrLljkrV1Tf/TISyUHoSO0Eo9eporFWXQWN7XKDlBgJcEHS3U5nz?=
 =?us-ascii?Q?jiSGEeUaiQptTMrOp/WSNtv9dpyiW2AeXhkVYT/ts1RVk5UeBc3Zxh07d3+v?=
 =?us-ascii?Q?xEpVA1c7DlXaTllJuyvzOF60yxDMdPFsf8yaS4ZkxgFYwZrI3QusH5t5dsi0?=
 =?us-ascii?Q?Nm5EJjXpb0AWR3U1wgLLzcA=3D?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SJ1PR11MB6180.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 65f4da54-c107-41b5-891e-08db690c6a3f
X-MS-Exchange-CrossTenant-originalarrivaltime: 09 Jun 2023 17:10:24.6118 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: Ya2txVjBe9+PT5MCPSfm9jtnwbLh/xps7aLnD8evukNxPSD1hpLs2hXFUpNiCyOkv7v+H6/R4QNpy1v/hwCnN9yhOk/kCPBc2iLvwJ/qR+ppLQ8gJQlPB3T0aA313tcY
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM4PR11MB6144
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1686330632; x=1717866632;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=WiUeCOcCMI+cg8v0FTLlIvPkxJNjMx9DTPihKssEx3Q=;
 b=R/AuPKZPb/yz/k/+tv+Ai11Mvga91i2qx4uCznrN9CEuk5wWXsgLobUk
 51NDxHsbNvVoC/JY4akOXOmFx0gQyjyar39sjWjBakhp214ZdrkrCyqLO
 v8tR3QaD8YBbgPrux0W69xJ6r6xZA30+yeA/l/UZVVneCTX+LMx0gPNKM
 W30xh6B37r3Qj8KNGHppa8fJOqp7/JjKTV99fU7QUIzQe6LPSFjSPGTHF
 WC8Q9BuE5rvrWx/cYi9sfOSTBS9j0/j9+CG70gD9nZOFEbN/8u3OH3Hhi
 oF3ADc7lGZyCryX2IjDRbR2kUUHYCL1UaENIEOtnuB5sOONaFhYL2SmS2
 Q==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=R/AuPKZP
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-net v3] igc: Add
 TransmissionOverrun counter
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
Cc: "tee.min.tan@linux.intel.com" <tee.min.tan@linux.intel.com>,
 "intel-wired-lan@osuosl.org" <intel-wired-lan@osuosl.org>, "Nguyen,
 Anthony L" <anthony.l.nguyen@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Hi Vladimir,

> -----Original Message-----
> From: Vladimir Oltean <vladimir.oltean@nxp.com>
> Sent: Tuesday, 6 June, 2023 10:03 PM
> To: Zulkifli, Muhammad Husaini <muhammad.husaini.zulkifli@intel.com>
> Cc: intel-wired-lan@osuosl.org; Gomes, Vinicius <vinicius.gomes@intel.com>;
> Neftin, Sasha <sasha.neftin@intel.com>; tee.min.tan@linux.intel.com;
> naamax.meir@linux.intel.com; Nguyen, Anthony L
> <anthony.l.nguyen@intel.com>
> Subject: Re: [PATCH iwl-net v3] igc: Add TransmissionOverrun counter
> 
> Hi Husaini,
> 
> On Thu, Jun 01, 2023 at 08:59:25AM +0800, Muhammad Husaini Zulkifli
> wrote:
> > Add TransmissionOverrun as per defined by IEEE 802.1Q Bridges.
> > TransmissionOverrun counter shall be incremented if the implementation
> > detects that a frame from a given queue is still being transmitted by
> > the MAC when that gate-close event for that queue occurs.
> >
> > This counter is utilised by the Certification conformance test to
> > inform the user application whether any packets are currently being
> > transmitted on a particular queue during a gate-close event.
> >
> > Intel Discrete I225/I226 have a mechanism to not transmit a packets if
> > the gate open time is insufficient for the packet transmission by
> > setting the Strict_End bit. Thus, it is expected for this counter to
> > be always zero at this moment.
> >
> > Inspired from enetc_taprio_stats() and enetc_taprio_tc_stats(), now
> > driver also report the tx_overruns counter per traffic class.
> >
> > User can get this counter by using below command:
> > 1) ethtool -S <interface> | grep Transmit_overruns
> 
> Is the unstructured ethtool -S still a viable reporting mechanism if a
> standardized place for reporting the counter exists?

This can be remove. I will remove the ethtool reporting mechanism.

> 
> > 2) tc -s qdisc show dev <interface> root
> > 3) tc -s class show dev <interface>
> >
> > Signed-off-by: Muhammad Husaini Zulkifli
> > <muhammad.husaini.zulkifli@intel.com>
> >
> > ---
> > V2 -> V3: Included new infra xstats to report back the counter to
> > qdisc
> > V1 -> V2: Change per-queue stats. Driver still remains adding the
> > 	  statistic independently.
> > ---
> > ---
> > diff --git a/drivers/net/ethernet/intel/igc/igc_tsn.c
> > b/drivers/net/ethernet/intel/igc/igc_tsn.c
> > index 6b299b83e7ef2..342530d11aae9 100644
> > --- a/drivers/net/ethernet/intel/igc/igc_tsn.c
> > +++ b/drivers/net/ethernet/intel/igc/igc_tsn.c
> > @@ -136,6 +136,16 @@ static int igc_tsn_enable_offload(struct
> igc_adapter *adapter)
> >  		txqctl |= IGC_TXQCTL_STRICT_CYCLE |
> >  			IGC_TXQCTL_STRICT_END;
> >
> > +		/* If it notices that a frame from a particular queue is still
> > +		 * being transmitted by MAC, tx_overruns shall be increased.
> > +		 * But currently driver setting Strict_End bit which indicate
> > +		 * that packet from the queue can be transmitted only if they
> > +		 * are expected to be completed before the windows of the
> > +		 * queue is ended. Thus, this counter will always be zero when
> > +		 * Strict_End is set.
> > +		 */
> > +		ring->tx_stats.tx_overruns  = 0;
> 
> What is the purpose of keeping a constant (0) in a variable replicated per TX
> queue? It is a waste of space.

Purpose is for the Certification conformance test. 
This is used to notify the application (automated) if any packets are currently 
being transmitted on a certain queue during a gate-close event. 
Since we set the Strict_end bit, the value will always be zero.

> 
> Also, if IGC_TXQCTL_STRICT_END wasn't set, how would the window overruns
> be counted?

Currently, there is no log or statistics about packets taking advantage of STRICT_END
not being set. 

Thanks,
Husaini

> 
> > 
> >  		if (ring->launchtime_enable)
> >  			txqctl |= IGC_TXQCTL_QUEUE_MODE_LAUNCHT;
> >
> > --
> > 2.17.1
> >
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
