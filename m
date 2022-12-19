Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id B3A776508F5
	for <lists+intel-wired-lan@lfdr.de>; Mon, 19 Dec 2022 09:57:42 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 358184091B;
	Mon, 19 Dec 2022 08:57:41 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 358184091B
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1671440261;
	bh=Pj3E8sVKsTPUAaN1PIV5mYDhSp4emoErUR+Wnfa7GTw=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=eZEBQaY+6d3C3QeMlsX+I3A/H2FOL3eqgCowQpKd3YkXqdfTadsWnWkvxjgCmr7Hh
	 5lkGQm+qwQZawkqjZj+PC6tbyN3b3v1gzdWSfx/MNeTUecpZD9WhDNCdYRMkliesP4
	 irrjmpteKIQxPH7nfe/9W1J10P/2deKYEznikeuIc3qtjUK5wuX1k4v1A0ujX0gTzc
	 SHzefpojQs+7s9MeKZrA9lEUpyEO2h/LiQPzOXFhuhBXIovq84AsFxq5hQcyQAPldc
	 ue9iWbm3xMmCtx7KWofRfiF0zmUwftVX1XNOr18g83bsLtRoz2Cr8/hFf+z9ekO3xp
	 h/yK390ZQ05hw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id XgewgaTsgQhY; Mon, 19 Dec 2022 08:57:40 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id D892D40907;
	Mon, 19 Dec 2022 08:57:39 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org D892D40907
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 030C11BF31B
 for <intel-wired-lan@lists.osuosl.org>; Mon, 19 Dec 2022 08:57:35 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id D0B9B813B3
 for <intel-wired-lan@lists.osuosl.org>; Mon, 19 Dec 2022 08:57:34 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org D0B9B813B3
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id okkXX5Bc9ilJ for <intel-wired-lan@lists.osuosl.org>;
 Mon, 19 Dec 2022 08:57:34 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 428C1813A9
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 428C1813A9
 for <intel-wired-lan@lists.osuosl.org>; Mon, 19 Dec 2022 08:57:33 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10565"; a="306979381"
X-IronPort-AV: E=Sophos;i="5.96,255,1665471600"; d="scan'208";a="306979381"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Dec 2022 00:57:32 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10565"; a="895975807"
X-IronPort-AV: E=Sophos;i="5.96,255,1665471600"; d="scan'208";a="895975807"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by fmsmga006.fm.intel.com with ESMTP; 19 Dec 2022 00:57:31 -0800
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Mon, 19 Dec 2022 00:57:31 -0800
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Mon, 19 Dec 2022 00:57:31 -0800
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16 via Frontend Transport; Mon, 19 Dec 2022 00:57:31 -0800
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (104.47.70.104)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.16; Mon, 19 Dec 2022 00:57:30 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=ZJGZctkWpI32w6ecKztJLrlu76Sy2zg0C4lOF1dij5z1lSo2+d85S7seItacGebMBRThyIMUuP90sC7rr5kMiHx4aI6QEXV+42aI5vR7KFFvkndA6dpEqLgzilYvfb7vpifQOakEh8IqtJGG03x1CNxQ3f+OdQNw1jL5dp06tHDmbAM+KQrLDM2ofFeV1zlgq0ajKb+OOYLSBGnMtGynuQe0Y3KA/yuhuzQOp7+DooP36LphczCEkSrLcf+cFQ1Q6eQJ7PMiVIXoKiSRYzgVAMuhUK/+k09/DsMqIU/KM6OOWv17TCL4AeJdp+35yyLWBlRbcZb8RHsKu6++pCIOyA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=m7MowKfnQ9HE7huxY/z7Ek4dFDb/Nqt4jTfUGEzPd6I=;
 b=G/fowl2nGLL0SAGObvCPGV7cmBDN/uBANx00YQfZL5MdNdGZCAqjTVT5dDdvGqVNPr1BMFva1Y+UfDM0bOdBKZ4HCuQY9M89X7EMXsmqUhTt6Y8hdqELVkWjYUKRnS02PtuYgy3K7QU4dL4/A+QIb7BHpfEExqIpX5UnTQcAE16wgZd9XVsCR5fiWvpwDwk6kyJY5c9L80OS6wDAPlBHZfK4FxZ2o7NmRrs7n29+ggAoB8yTr/R9VYESsKUNyZT9A0U7NwGbgQ34xkR4Ys5+1QBJwUhJhucV5Broj1AmcGDGO6bxHsWUFsXWgB3DGPRf5/pn7P8sf2ECoXbSnB6rLQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from BYAPR11MB3367.namprd11.prod.outlook.com (2603:10b6:a03:79::29)
 by CH3PR11MB7915.namprd11.prod.outlook.com (2603:10b6:610:12f::7)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5924.16; Mon, 19 Dec
 2022 08:57:28 +0000
Received: from BYAPR11MB3367.namprd11.prod.outlook.com
 ([fe80::86b7:ffac:438a:5f44]) by BYAPR11MB3367.namprd11.prod.outlook.com
 ([fe80::86b7:ffac:438a:5f44%5]) with mapi id 15.20.5924.016; Mon, 19 Dec 2022
 08:57:28 +0000
From: "G, GurucharanX" <gurucharanx.g@intel.com>
To: "D H, Siddaraju" <siddaraju.dh@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH 1/1] ice: restrict PTP HW clock freq
 adjustments to 100, 000, 000 PPB
Thread-Index: AQHY+Q9uyhs6a9F+REWObmk2q/98Za51HYLw
Date: Mon, 19 Dec 2022 08:57:28 +0000
Message-ID: <BYAPR11MB3367941112E7C3A9898E5B88FCE59@BYAPR11MB3367.namprd11.prod.outlook.com>
References: <20221115094135.147659-1-siddaraju.dh@intel.com>
In-Reply-To: <20221115094135.147659-1-siddaraju.dh@intel.com>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: BYAPR11MB3367:EE_|CH3PR11MB7915:EE_
x-ms-office365-filtering-correlation-id: 18b48dc4-85d2-45b4-a869-08dae19f0e77
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: /eioINWei6RFdp+CIlSDwTYdz+AgesjJ5fSF1nzfCKy3TTMW5WbkhOQpfl1364nBMJsxM9oWzaavfm47wSZyvOdH/gAMu1J+hfd7F1+XQUsEH71Vx89r43TGYgA72iCVypxm9SGhv1Pe3KmIaCkcMNthRL3+ke2/EvULaEpsNo79xwvmNw37F97kw+HDGJvfCpej95wIzKVM6cmSHQvzSncx2tNVxzsLVZNBc88nToX/CDPmiHMHpqIAFLB0w3WUHpQLKIV7AHEyF9GsqQXT1X+QIL0STWA9/09qeX6WNcMWEaeC0xP7g6fGGV2bGGwazXn74vH5+QUMakCgdhUJTZo0S2/PVrSjzGJ8M0wFIiIkJS9ufEjYjerLwQ/CMj8IgFwIAN2yDGfu5DIe0zGoL9XUmxGYqkqrQR3CyWZeOM2z6g0ZRm8q3AqDJIQLT4xmTqZHedGpdf3E8Q/sUgzMQYfTnmqhd8KNQgNqQFCji4sMLJSE9CcxlLeFbxsy80szfQR93JE3a5S+YBAMpVA8Z1cc6UaHupzLFDvGAG6P+M3F5XIM57LWBGbuKFDhT3Bj+e4WP4NAJ2bjapjmvznqxCrdUkCjafvjJiDc1Nof35TjmhcIHrYFga5/DjN14b/479IzxDbO+g/3ixY+VBpUPCqKA9mjPGWsOLaIYVpUvem9S2/sU9gq8zo+N9Yc2P1KrHdaEOfjTLL016d3GHSRIQ==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BYAPR11MB3367.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(376002)(39860400002)(366004)(136003)(346002)(396003)(451199015)(66476007)(71200400001)(33656002)(55016003)(86362001)(76116006)(4326008)(64756008)(8676002)(9686003)(26005)(41300700001)(52536014)(478600001)(53546011)(6506007)(107886003)(7696005)(2906002)(316002)(122000001)(110136005)(82960400001)(38070700005)(38100700002)(8936002)(83380400001)(66556008)(66446008)(66946007)(186003)(5660300002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?8Z5nLkjUs3ppeZQlIwwUtkV9VVZ0ExlY+TtiQGtPeofsKMeyvPh2JzUT864C?=
 =?us-ascii?Q?sglkBYqW92yFxDG9eFge2qlt8GzpWVqP7UpXE5Khexywx/qLoQRzP1SSQ1FN?=
 =?us-ascii?Q?m65vVHol3FwxzCatjIVDEtJGeYmr8befMltddE/SR6ZIXUusX5vgrIyi5+E1?=
 =?us-ascii?Q?d7rlVNlXvCAe+zSro/O7z+Cv6OIGfmHmSASCT6UAtpi5V92ffD7NVpf08nFe?=
 =?us-ascii?Q?0BS8A68kNhDIa3xm774qOKT7OjdF6BnH4M3uV0RZ20LglwoHyEd0O3NHwvgf?=
 =?us-ascii?Q?LZaSOAhXgl94SIM/dJ6aEzxZ1bRXJJl884yZDn78tHHnhWetcJ4MWvP0MuhK?=
 =?us-ascii?Q?C/g14oCBRp58mdYMujjdzfxYP4bg7n/BJsQhOa+ly9GNBYqAx9uK2UvNmQha?=
 =?us-ascii?Q?isFCdAEjCIPy2FGpWMSmW75gXJ8bvitIfOUhaYV9Uc5N5Y3l+6Vl+K2Xw3+A?=
 =?us-ascii?Q?rJeo7I/epwWGXKAxlbqLYHNPzWnjNaLPMeJhezLiKJEu7eA0W40XGhF+Ao4z?=
 =?us-ascii?Q?7axxNQfg8jiFNQMhkUhBEzmOngXu5LC0dE6AMo06kd9bHLrf/90sNypLLGke?=
 =?us-ascii?Q?7zFswglrSXotQF5uYye6bf1idUJ+B6Rz+kWayrwui3ctjn71+5e+eQBQ4hMu?=
 =?us-ascii?Q?jZUBtcPgaNdR5jjhGIkCkVqURYfWprsVMRY61Qw+Ugi9/53fmg2vOZ/rH4NH?=
 =?us-ascii?Q?01hcGgywQrY0MQhOk4XLlMNXPZkO5RRcAP0tpNI+LW6Cxi0rvxuShp2oa7iT?=
 =?us-ascii?Q?OCdS5854MpBjIih53xRXzWIru3woJ1dmyJXe6COrCMTR7y+79GLyiKvIs9z+?=
 =?us-ascii?Q?/2j2K+F1u31wFE2gPoTE4Kxsc8fSmvTSRxzJS/S2741Md2iou8rNGdDxKKMG?=
 =?us-ascii?Q?eO5H4IWWzttjMlRi9lBFBfw7KXvO9mUBhxgtJJIJAQ7ONh7Me5NnO4ocIJzC?=
 =?us-ascii?Q?Gcu5D4JaLCOVv1nVXdFlvlqLM4D+9lKuMctmXXt/BDPmitReXMpCaz4TwKud?=
 =?us-ascii?Q?CeqSBWbcdtSZRPdrMNHrQgUof4P2uhUbwVSgEB4EDqhXx5r/pGNE+sT2QPlh?=
 =?us-ascii?Q?hE/FnoLpohpGWlzhZnccowiCad0xL7aq2Yg09TeoxI4MyHYhikSyzxGaV1L1?=
 =?us-ascii?Q?TpN99zP+NVp8pp8sW5cwqXKg3tyWhx9m51A1BPtc5ehT0eTk7OXdn6ZMbrEL?=
 =?us-ascii?Q?dpGPCuzw+wURYTy25idDYCbg+mokR/RTRQxaCPJ2NU6Qce5j/7XQgNtT7B4k?=
 =?us-ascii?Q?zKVpK1ek54kxn6mrsRt02nSqdSyTLJwLS1je4a5WJNe2ekbxnAUS+mw0RDRf?=
 =?us-ascii?Q?C60ltH97TS6wXkFNoWXL3i1sdr3hcFUdV5ahpJ9j+OW5dVFUpPugGUzBKhxP?=
 =?us-ascii?Q?vUi7wWIIQURYSPJgPPhiThyCK5CUVUxKS+bXOsBUWAzb4O+U1/nbuGwSogpd?=
 =?us-ascii?Q?t1ma7a+QZwqL8zGY45vRd4rYCjIpPePpPdAbqnOvHF3cHL7eWrMhiEEMXVKX?=
 =?us-ascii?Q?MPg4ogXddhvjNF5I2I/dVIbunh/xKb+9v397kUSdQPkMUeJSilD+F3476mko?=
 =?us-ascii?Q?UWqouhZ8paqqKu2kW42587CYi7lO63IG5LswR16Q?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BYAPR11MB3367.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 18b48dc4-85d2-45b4-a869-08dae19f0e77
X-MS-Exchange-CrossTenant-originalarrivaltime: 19 Dec 2022 08:57:28.4650 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: WkPn7TBpqWDO0T3CR/+fRO8YczsWp62/bs7MVLHzNribYbfuBrhkQNQLQcxbAuZFWPIfmcseQB3m2C5QQGdjZw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH3PR11MB7915
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1671440253; x=1702976253;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=4+0/mz4uamhpyax/+Qc1omfYE68TVy0rJGMNzVITb9w=;
 b=alzqcnjjoDGxAlQzifZa330Uh5zbX6hemPtg3Xp/A1aIMS3/ccCEtf5v
 kvGEO15rcGLWt39hbwHjpA/lfmW/3ryfITDKWQ9AjlXYzQ3Z1ZnpBjQ3c
 IlCR+KmuDqzuk1u0RIbtDJpI6sYLmy+4All2iCk96GCczK4mK9LwlIrUl
 Ufyu5RHo7g/ThOKNLtr1MUKEOd28EVaV1mapHYh9DX2tw6SDF8/vkVMWc
 1nhOnIMeHKyQpoOpe1NoLcKmmNYsaFeWNvA9Ykua3pBekpBxYWg5H7i4o
 deb0ATEyzTmhgNTkalNkBzKuN3OA7p74OEsdms2DRo8+8h8HzJbf4sFdv
 Q==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=alzqcnjj
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH 1/1] ice: restrict PTP HW clock freq
 adjustments to 100, 000, 000 PPB
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
Cc: "D H, Siddaraju" <siddaraju.dh@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>



> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of
> Siddaraju DH
> Sent: Tuesday, November 15, 2022 3:12 PM
> To: intel-wired-lan@lists.osuosl.org
> Cc: D H, Siddaraju <siddaraju.dh@intel.com>
> Subject: [Intel-wired-lan] [PATCH 1/1] ice: restrict PTP HW clock freq
> adjustments to 100, 000, 000 PPB
> 
> The PHY provides only 39b timestamp. With current timing implementation,
> we discard lower 7b, leaving 32b timestamp.
> The driver reconstructs the full 64b timestamp by correlating the 32b
> timestamp with cached_time for performance. The reconstruction algorithm
> does both forward & backward interpolation.
> 
> The 32b timeval has overflow duration of 2^32 counts ~= 4.23 second.
> Due to interpolation in both direction, its now ~= 2.125 second IIRC, going
> with at least half a duration, the cached_time is updated with periodic thread
> of 1 second (worst-case) periodicity.
> 
> But the 1 second periodicity is based on System-timer.
> With PPB adjustments, if the 1588 timers increments at say double the rate,
> (2s in-place of 1s), the Nyquist rate/half duration sampling/update of
> cached_time with 1 second periodic thread will lead to incorrect
> interpolations.
> 
> Hence we should restrict the PPB adjustments to at least half duration of
> cached_time update which translates to 500,000,000 PPB.
> 
> Since the periodicity of the cached-time system thread can vary, it is good to
> have some buffer time and considering practicality of PPB adjustments,
> limiting the max_adj to 100,000,000.
> 
> Signed-off-by: Siddaraju DH <siddaraju.dh@intel.com>
> ---
>  drivers/net/ethernet/intel/ice/ice_ptp.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 

Tested-by: Gurucharan G <gurucharanx.g@intel.com> (A Contingent worker at Intel)
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
