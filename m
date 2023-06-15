Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 6BBBA731CE2
	for <lists+intel-wired-lan@lfdr.de>; Thu, 15 Jun 2023 17:43:34 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 0BBB680C3D;
	Thu, 15 Jun 2023 15:43:33 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 0BBB680C3D
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1686843813;
	bh=QfmDaGAIz18gnW9Og/AxlwyrDUziOO6f3HKvOd+u0p0=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=lUZ0CZZuPLLHKfsCKfIJW4EauM6xTT2/Ap6o7DFhUISUqBuV9kA5ndW3VK0nldGNr
	 +hnq4kUdJCXyYbm5Kl8l0Y4wvBbIDBLdn285GjIYOK0P5j72/hky9CPesdkqj+BDdT
	 uCPzl7plVUJCgt647mFJrP08ePXXS1pbhIlQeFAchK7YtpVVe31i8lal9Fe9hJ81xX
	 X8PlY0PNeKPdq1ch2YFzTNmgtXSsP2AHJGCs0cuqvSaRMjYw3VcyxwHlvFSab81C1g
	 xi6Ugf7Gd+v/JFAnd1J2fAFg/MnXG9HtFbhlIE/i25+ZKJI1NClQZUqiP+gykPFsPe
	 ei6f6ipCAZ7lg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id emCNgdEUyR0q; Thu, 15 Jun 2023 15:43:32 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id BA21781E4B;
	Thu, 15 Jun 2023 15:43:31 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org BA21781E4B
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 082FC1BF296
 for <intel-wired-lan@lists.osuosl.org>; Thu, 15 Jun 2023 15:43:27 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id D3052402E2
 for <intel-wired-lan@lists.osuosl.org>; Thu, 15 Jun 2023 15:43:26 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org D3052402E2
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id LXImYrRbxfs2 for <intel-wired-lan@lists.osuosl.org>;
 Thu, 15 Jun 2023 15:43:25 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 7558E402D1
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 7558E402D1
 for <intel-wired-lan@lists.osuosl.org>; Thu, 15 Jun 2023 15:43:25 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10742"; a="361456687"
X-IronPort-AV: E=Sophos;i="6.00,245,1681196400"; d="scan'208";a="361456687"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Jun 2023 08:30:28 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10742"; a="959248345"
X-IronPort-AV: E=Sophos;i="6.00,245,1681196400"; d="scan'208";a="959248345"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by fmsmga006.fm.intel.com with ESMTP; 15 Jun 2023 08:30:27 -0700
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23; Thu, 15 Jun 2023 08:30:27 -0700
Received: from fmsmsx601.amr.corp.intel.com (10.18.126.81) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23; Thu, 15 Jun 2023 08:30:26 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23 via Frontend Transport; Thu, 15 Jun 2023 08:30:26 -0700
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.109)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.23; Thu, 15 Jun 2023 08:30:26 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=MnnrwpyleaDLCHrunxXeZ53g/qnfHBuZQ23BcRFSWqSsovkpUz0dKigjJa82nPL4nTulrIt1RSvHrMOs7pNhsSZ55UnHOtmzQV4Qs1nMImfZc9yLP0V+9s/iq7OVSPRaSviMnQCqL0X/n3bfaCytlYGQ8djZKI8tKW5YOHFs8P6BAVDF/4q7iYd9+7m+L6DYL6ns1PBx/mHcui3wm/iXB5aVzJpJs6lSXV1tpk0MaM3rFftdSe6JjUE1gQw3LibJq+YDbbOco5vUIf3TDUKvpocMx39ApcwHGB6GkuRQlvhQws46K4DThmjV3gp3TLRgVTcdUQ/r/CyjQwCBdlbQnw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=xVqQUfyoC+nL8c0QdY1Eo33ZHyg/42+OWIb3lnoHMuU=;
 b=NSBjd0jEdkfwv9YPPT82Ilii8TfIuQRCzDMtLplrJBhhRkPSVAvyC8worYkzFVPYOKD+TPzUsIBf8vpYJCRORadU08H7Dp1RNfJ/F5CL+yeCRil+zIbBKhSJ6IZzsJ6+eUXFwev8GECBm9kOfVa7kui+xTDux5T5Jsm7TJM5CO79eTNvUTbz7plNc7TXUM+qRzNhycSqBw/29n7tHMRArMlZrIDcqQL8oQsp1feFljjXYCMvAek2Oxlnf/7B5H5raCS+QIPpJFkzhTcxvKZlE7pLSkTIAelTC9WYAOUe9RUct2bkcb6cRf3hzKZzkUewQ0xkpF0UWCdcpRG65oTtAQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from BL0PR11MB3521.namprd11.prod.outlook.com (2603:10b6:208:7b::32)
 by MN0PR11MB6279.namprd11.prod.outlook.com (2603:10b6:208:3c1::11)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6500.27; Thu, 15 Jun
 2023 15:30:24 +0000
Received: from BL0PR11MB3521.namprd11.prod.outlook.com
 ([fe80::2134:60a2:3968:7298]) by BL0PR11MB3521.namprd11.prod.outlook.com
 ([fe80::2134:60a2:3968:7298%2]) with mapi id 15.20.6477.028; Thu, 15 Jun 2023
 15:30:24 +0000
From: "Romanowski, Rafal" <rafal.romanowski@intel.com>
To: "Zaki, Ahmed" <ahmed.zaki@intel.com>, "intel-wired-lan@lists.osuosl.org"
 <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH iwl-net v2] iavf: use internal state to
 free traffic IRQs
Thread-Index: AQHZipthlaTYvagWV0Sl9qFeuvKAm6+MJ1AA
Date: Thu, 15 Jun 2023 15:30:24 +0000
Message-ID: <BL0PR11MB3521CA3706260B579FAA215D8F5BA@BL0PR11MB3521.namprd11.prod.outlook.com>
References: <20230519214602.3961912-1-ahmed.zaki@intel.com>
In-Reply-To: <20230519214602.3961912-1-ahmed.zaki@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: BL0PR11MB3521:EE_|MN0PR11MB6279:EE_
x-ms-office365-filtering-correlation-id: ca6f4c13-9a8a-47f6-3001-08db6db5703d
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 8Hlyv1e83HzF36ktyYlpeszK1FOq61VyhiZNsblDxz9LWxt59KmmPCFDiZhLuF/JVWE+RuKFxm/gtikC83KJJc1K2ZcnzqOpQ6CFJsk7jYqMolj+gB5nHfG4eYwU3g31XHUOoL5mMV5TjhbiCYwKe/P1jvLe3lyoobIzaxu/pkkTyYBAmgVQ4Jy0XC4HvCMUdhDmP51nwUyzxaOGIR4Mstwx1rMZqZZ84NnPaKK+KvnzabuHNfHw2M1bzadp3Ig5cMKULmGaagwnshKEInk5Roo5i/tZBWzLlvD/EuxLEag6EpVt6B73DihyIFIyKarrceRzST2w90Nn0G8HdGu9oEa+ZxBZ4GVTqdp8GluGEkZTsIGWcp/tGkdzeHbQ9Bdz6xqLDNp42sbHfG60apxbz2fJYYGCJeNBpBC+gR1iX+btND/49ROpZPHjSNzVbPZ8vGr5xGClw7Z5Rihm+r5KMYvFsP9mliLS7oJwVQNtm/v4tDNKjH7sAGj0ZcydoP/hV8TF4pSOCUzKghdnx9FfbGBrGyCW0mBqVT2k/hetcqjM09iq/2zhzqXgcHu/qCkq1AtodUx5hY8HpHYwLNje7FXkTt6tDKYeKsunT92JdJA=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BL0PR11MB3521.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(376002)(39860400002)(396003)(346002)(136003)(366004)(451199021)(66574015)(2906002)(83380400001)(33656002)(86362001)(38070700005)(38100700002)(122000001)(82960400001)(55016003)(8936002)(8676002)(7696005)(966005)(316002)(41300700001)(52536014)(5660300002)(478600001)(110136005)(66946007)(66556008)(76116006)(66476007)(64756008)(66446008)(71200400001)(53546011)(26005)(9686003)(6506007)(186003);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?iso-8859-2?Q?tKmKvWC0VWE18pFbSfJKlZjDwoY+HMgiGxubu82F8pL8mtKxJnCpnd0onH?=
 =?iso-8859-2?Q?lxtysSGr5ihsa9MsZGt9+y42uFZOmpoXDKMwtFewozCdicHjIzPkqk3J3p?=
 =?iso-8859-2?Q?DhPN//FoBec4vGi04+0nnE4EGPDI3EuqKkgs/Dk6HP21Sebb709y6Ou3bv?=
 =?iso-8859-2?Q?tOdT5b3Up98pKBqlwkJ0NjW63zQbNnhUVPdI7troy/I3IUWOKVf8XMjsTI?=
 =?iso-8859-2?Q?Iugg8cJEDFelHzxvUEb7TY0AdpLAG0tvb+z1JL/5eMVzf5aYMpdoTCTIWf?=
 =?iso-8859-2?Q?86xKYt8bfK+lL0ilnwHAsSpp3XhDe5NBiqVrnpBI+xdSIPN2KlEC6/lqwk?=
 =?iso-8859-2?Q?m5IHqIOcZebKwzTYR5/RjFPBVqaO7p1TuhTPsEMOFi9zGJGaEoL82KuLI2?=
 =?iso-8859-2?Q?n39gZn11sC43JYWFt7Tl+GMOSn30rdc1zwlBOC1hb6pTTn6UvkCONcq6tU?=
 =?iso-8859-2?Q?UlMM9e7ueKdW0g018VnUGYTN10CaAz586zUd3hZDUCQ/Xv/1f+YPltQoNu?=
 =?iso-8859-2?Q?Y7Z2m4Dv8+12fjfPJhFweB7ZJyMMTJv27diSu9oUK9DQfu7qnofJcQOpuI?=
 =?iso-8859-2?Q?8ze9AlNOErVoQYpFGDACkaKJzQPo9aplFRSQLj7WtekeDCa11QW1xfViB2?=
 =?iso-8859-2?Q?dPre6PmF9ZXL2UiVBf74leMgV19dUU/t7t9W5l24J2Tb/Qei1u/vJ3jszU?=
 =?iso-8859-2?Q?n57XEozh7qY9REe9u4m22s4PJpwkvN0D70nvbraRfAnjTfvzzjgJrR/EPI?=
 =?iso-8859-2?Q?3LigNPZjWyOLguziVNidC6xyZolGvqxa6qoOhGXQIK7c3bL0bE4RF9DXMg?=
 =?iso-8859-2?Q?9jNv9JlcALrCVyUDW6QakT/VUbLI+4o//zunlFxlN/pg8c7sO5FfocTZO6?=
 =?iso-8859-2?Q?neqAfjC34Ngu+xYfjqI5vYMsShuzTnvDDvZGUq8jHn2VQt9y6Bcrub6MyI?=
 =?iso-8859-2?Q?BP+iC9w3BHur/AL89kYoZgbY28PqNRR60cLFxnCvYKCVhAzartSe3+ks1E?=
 =?iso-8859-2?Q?lMLIMcd0mjJWt88sOBX3pTzzoMUIjZU6cBBltgvpiYYlyHRAhMvhOBfaL5?=
 =?iso-8859-2?Q?DYRC8L7PxX5Zo1i2V3qgoW3ckY38J3BLQ7xyPSohZCJ3tXCT5hhTE65Xwh?=
 =?iso-8859-2?Q?9R7vCnO+VwnnORHr1b9pbY1nD3NlZAEtpWqiILkp1T455qGaYwVUzjWtYe?=
 =?iso-8859-2?Q?8ZGUYZzG/jc5Nv+Qgpirw31vi8PqST1k8wWm09aAD7cVy6U2tl8wr2R8hN?=
 =?iso-8859-2?Q?SpozKBHngl6uiAV5NjQcoCm9+YB0aZxcyMcpR7D4rYTQNBI4/spw86GBJu?=
 =?iso-8859-2?Q?jE8obEEhW9KXMpi3ZJE+Yi549Pf1JaRLeCasqrWB1U+/D69LYY0MtwiceZ?=
 =?iso-8859-2?Q?q11oXvhjwYLIlSoUm9WGq5Xx0ds88fHe8+8bQ6Znb+71xtCDQWIWgQ1JUa?=
 =?iso-8859-2?Q?pq1f5lp3RP8Zrf7SL+veM26Es3CjXpgQMH9rPcv/j2gaBs2zolEbFboJfH?=
 =?iso-8859-2?Q?Vowq7Ml/GViCXYDaCP4P6XgqNLuG9EddGi1YHFgLd1ei2lvOUERPunxhIv?=
 =?iso-8859-2?Q?cDaEVfK8hGVVWynTcul75FKiCWoO2Yd9zFO/8TOpGC1rCqLreRNlUBQ5Hm?=
 =?iso-8859-2?Q?H9xo+QNMwrbZAZ0Qom87+FLFp8EonEvwPvxCfkb+P2jTc/7UhlJNkFfg?=
 =?iso-8859-2?Q?=3D=3D?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BL0PR11MB3521.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: ca6f4c13-9a8a-47f6-3001-08db6db5703d
X-MS-Exchange-CrossTenant-originalarrivaltime: 15 Jun 2023 15:30:24.2086 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: NkF7J3ayTj30eKYFOwKzDwtch3DTOWrEb7eQwhe5/dfv8lXNEMyujcrg9Q7Cpenq4GF1eBa2SZ44QF92rrB75ZrnOWDG/7b9KngQyYf7A64=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN0PR11MB6279
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1686843805; x=1718379805;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=eIMs6nibH8ELdEKkafmtidWs7LSXczCgUPo9LPn/l34=;
 b=jSNLP/uCcuGAG/fwQ4cRjD4s/kck8/oj16OUAvoQpExme7BVp2FTRL4g
 46OXSAwFSI/8kFCOyP6hvU6LjbMaUNUMLjh4EJEAKRKgiJtpD+nkBTHZG
 S67IyX+MSaLHTgFpkWmt5hAj7ySaDH114F/aFxgD/W8C9TksU/43PmD5Y
 p87CISdMNRd33uyV6sYXa8Vfwin462gWMbXHfKls/XjvkjRf0ow4Fpsoa
 +fuJ4oqtr2Be8DqvC8Hnw919qm6hX308mz2fvZ7o600WZ8BH1RXJMXutA
 P0PStIQkBKWW0pPiWEzPD3+sCaF+oM1nIX8eAGNL9jYpo/G/P7oZJfjP0
 Q==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=jSNLP/uC
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-net v2] iavf: use internal state
 to free traffic IRQs
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
Content-Type: text/plain; charset="iso-8859-2"
Content-Transfer-Encoding: quoted-printable
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of
> Ahmed Zaki
> Sent: pi=B1tek, 19 maja 2023 23:46
> To: intel-wired-lan@lists.osuosl.org
> Subject: [Intel-wired-lan] [PATCH iwl-net v2] iavf: use internal state to=
 free
> traffic IRQs
> =

> If the system tries to close the netdev while iavf_reset_task() is runnin=
g,
> __LINK_STATE_START will be cleared and netif_running() will return false =
in
> iavf_reinit_interrupt_scheme(). This will result in
> iavf_free_traffic_irqs() not being called and a leak as follows:
> =

>     [7632.489326] remove_proc_entry: removing non-empty directory
> 'irq/999', leaking at least 'iavf-enp24s0f0v0-TxRx-0'
>     [7632.490214] WARNING: CPU: 0 PID: 10 at fs/proc/generic.c:718
> remove_proc_entry+0x19b/0x1b0
> =

> is shown when pci_disable_msix() is later called. Fix by using the intern=
al
> adapter state. The traffic IRQs will always exist if state =3D=3D __IAVF_=
RUNNING.
> =

> Fixes: 5b36e8d04b44 ("i40evf: Enable VF to request an alternate queue
> allocation")
> Signed-off-by: Ahmed Zaki <ahmed.zaki@intel.com>
> ---
> v2: update iavf_reinit_interrupt_scheme()'s kdoc description
> ---
>  drivers/net/ethernet/intel/iavf/iavf_main.c | 7 ++++---
>  1 file changed, 4 insertions(+), 3 deletions(-)
> =

> diff --git a/drivers/net/ethernet/intel/iavf/iavf_main.c
> b/drivers/net/ethernet/intel/iavf/iavf_main.c
> index 1ad0fe7f6dda..89892a0fd5b7 100644
> --- a/drivers/net/ethernet/intel/iavf/iavf_main.c
> +++ b/drivers/net/ethernet/intel/iavf/iavf_main.c
> @@ -1943,15 +1943,16 @@ static void iavf_free_rss(struct iavf_adapter
> *adapter)
>  /**
>   * iavf_reinit_interrupt_scheme - Reallocate queues and vectors
>   * @adapter: board private structure
> + * @running: true if adapter->state =3D=3D __IAVF_RUNNING
>   *
>   * Returns 0 on success, negative on failure
>   **/
> -static int iavf_reinit_interrupt_scheme(struct iavf_adapter *adapter)
> +static int iavf_reinit_interrupt_scheme(struct iavf_adapter *adapter,
> +bool running)
>  {
>  	struct net_device *netdev =3D adapter->netdev;
>  	int err;
> =

> -	if (netif_running(netdev))
> +	if (running)
>  		iavf_free_traffic_irqs(adapter);
>  	iavf_free_misc_irq(adapter);
>  	iavf_reset_interrupt_capability(adapter);
> @@ -3067,7 +3068,7 @@ static void iavf_reset_task(struct work_struct
> *work)
> =

>  	if ((adapter->flags & IAVF_FLAG_REINIT_MSIX_NEEDED) ||
>  	    (adapter->flags & IAVF_FLAG_REINIT_ITR_NEEDED)) {
> -		err =3D iavf_reinit_interrupt_scheme(adapter);
> +		err =3D iavf_reinit_interrupt_scheme(adapter, running);
>  		if (err)
>  			goto reset_err;
>  	}
> --
> 2.34.1
> =

> _______________________________________________
> Intel-wired-lan mailing list
> Intel-wired-lan@osuosl.org
> https://lists.osuosl.org/mailman/listinfo/intel-wired-lan


Tested-by: Rafal Romanowski <rafal.romanowski@intel.com>



_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
