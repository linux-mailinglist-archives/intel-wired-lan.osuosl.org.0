Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1636E47E05C
	for <lists+intel-wired-lan@lfdr.de>; Thu, 23 Dec 2021 09:24:37 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 86E73405FB;
	Thu, 23 Dec 2021 08:24:35 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id JBymOQlBdpPH; Thu, 23 Dec 2021 08:24:34 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 26B2C405F3;
	Thu, 23 Dec 2021 08:24:34 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 95ECC1BF4D7
 for <intel-wired-lan@lists.osuosl.org>; Thu, 23 Dec 2021 08:24:28 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 74E82408FB
 for <intel-wired-lan@lists.osuosl.org>; Thu, 23 Dec 2021 08:24:28 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp4.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=intel.com
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Xg3Os-msMO2h for <intel-wired-lan@lists.osuosl.org>;
 Thu, 23 Dec 2021 08:24:27 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by smtp4.osuosl.org (Postfix) with ESMTPS id C20A0408F6
 for <intel-wired-lan@lists.osuosl.org>; Thu, 23 Dec 2021 08:24:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1640247867; x=1671783867;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=0sKlNPJyLwVcXA0bl4cQYq1rgD38QXfh7ZADaErMiic=;
 b=cxs/TBFyImMqHKj9DFzJrWvsiFuyp52zlnvRge5elmFg4Ycz355F+cHt
 EsKiPVkuLsPcynsCWtPwJmwofMzaylPa6+CoWZBHTzxo6pArR9PbYXefW
 /uCF2XSjmGQ9rUxN0Y8DVQSvucPbEsLf597e2DggQu+1Ukj8XAnHnG/7w
 yipCRQSFCocvspqy5eiCcw4NDDR+lzg/wwx7qLYOR1mQPlQUMAYbRb2SP
 eMWzoQprmt6pFMG+iCsAdFT2/0HjzpVzQHA+OFcsjY9UcJmiFBs3vnBdk
 LnoGxrgbxnZL4HqDEFUXJ8UwAtqxtrmQ3rNk1XnPtZDW64yRVZJWc5dOT g==;
X-IronPort-AV: E=McAfee;i="6200,9189,10206"; a="241007847"
X-IronPort-AV: E=Sophos;i="5.88,228,1635231600"; d="scan'208";a="241007847"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Dec 2021 00:24:26 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.88,228,1635231600"; d="scan'208";a="508781687"
Received: from fmsmsx606.amr.corp.intel.com ([10.18.126.86])
 by orsmga007.jf.intel.com with ESMTP; 23 Dec 2021 00:24:26 -0800
Received: from fmsmsx601.amr.corp.intel.com (10.18.126.81) by
 fmsmsx606.amr.corp.intel.com (10.18.126.86) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.20; Thu, 23 Dec 2021 00:24:26 -0800
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.20 via Frontend Transport; Thu, 23 Dec 2021 00:24:26 -0800
Received: from NAM04-MW2-obe.outbound.protection.outlook.com (104.47.73.176)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2308.20; Thu, 23 Dec 2021 00:24:26 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=EzCqM5pv1M9QTfISCKqB2+r9bH1FqbuPXYA18uLhD/gY3jgalcm0CthdkYVToQQrewQUAXCyPx6y9PFYd77zXZr63qiaq2deEsAOKL+2G6X2JUcFtCnngSa/lLOjBaLQ5+UfUo0mZcMumONJotLt2pPO3os8tKEhUrqScnqgXY1Uq78MZsC55rXJk7KPcrfSvITRTsXmJ93yAFeKYqQxt9JTJsBazoMWGp6B09tqB+nZ6gM4SiQvv0oNePwDkBq+/1k1p9YgbA+HgA+yhvtegrboVV4kvlVqwoGlcjw+EMBKupQpbygpyi7wrN1v8kjUAjt2i2x0jXm5R2baBkUGrg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=BPSIFDgwvnRUm74jlgtB4u1V00kTT4w+RgRFZECh6kI=;
 b=g4EAre2Pp7RvYArauy95BbDlu3VG828e6e27B5fUTyuRttTyt8B1pDH+2aVyxYnhS5UDpf7j/hnQqKIKDKJjpHmdVSHxrfLpQRV/kNP/gIRjnsdB2QxWew3UQg3V12f2qwArkLleE8VR3yRC+zS0xJnpuAnbwMP+HPdS9Q7+UO673a5EdEO6fStZKPMvRuDUtrn5Gdbd4cFqCGIB4YOXuEkARbHrteVdHsF6eP5ttp83Hw3PybdfUWrUp5mM593PljUnXUL79UWTBzBTA+57tJ0rMLhPMNuTrUu5GDOiCTJDnP9vum5/r3nfMU42OvXMz/+V6yB9qrSSsXBSbritMQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from BYAPR11MB3367.namprd11.prod.outlook.com (2603:10b6:a03:79::29)
 by BYAPR11MB3333.namprd11.prod.outlook.com (2603:10b6:a03:19::18)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4801.17; Thu, 23 Dec
 2021 08:24:24 +0000
Received: from BYAPR11MB3367.namprd11.prod.outlook.com
 ([fe80::bc02:db0b:b6b9:4b81]) by BYAPR11MB3367.namprd11.prod.outlook.com
 ([fe80::bc02:db0b:b6b9:4b81%5]) with mapi id 15.20.4801.020; Thu, 23 Dec 2021
 08:24:24 +0000
From: "G, GurucharanX" <gurucharanx.g@intel.com>
To: "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH net-next v3 12/14] ice: Advertise
 802.1ad VLAN filtering and offloads for PF netdev
Thread-Index: AQHX55t75P68OcIpS06tn+ftXI9vDKw/3Y9Q
Date: Thu, 23 Dec 2021 08:24:24 +0000
Message-ID: <BYAPR11MB33672F580EDD0A8475623E7EFC7E9@BYAPR11MB3367.namprd11.prod.outlook.com>
References: <20211202163852.36436-1-anthony.l.nguyen@intel.com>
 <20211202163852.36436-12-anthony.l.nguyen@intel.com>
In-Reply-To: <20211202163852.36436-12-anthony.l.nguyen@intel.com>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: f8d97030-94b5-4797-0ec6-08d9c5eda0df
x-ms-traffictypediagnostic: BYAPR11MB3333:EE_
x-microsoft-antispam-prvs: <BYAPR11MB3333E0D8A7EBA61CDA57AC38FC7E9@BYAPR11MB3333.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:8882;
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: szvf9CGClUbqRyKAeMZkXWEoSE8evx+AuYQxJm9KwmhfkuM3M4QB9vOUXHDf4THvPyiu/WMFKhun0IGFdhio7cspaIkktCkd9VDFj66B0u5MtG7frjz+0Sdt03DXFiLgnaAQQ7T4nkiHf8qcJDvr1ed+swVBRLpLIqs8s0AIqdIGehxLNJQRkrBpZngxwhdBHu80j/WOI0VM27jr3LG4B0DxPeHEcEqD4agUDO6J+8jvQduSaU9dWaHPf79zgAlnRYorRuCzpYZEGe7lyuWT+q86+YCDdFRc2U+HcfFAkevf42EqSe4ej1n2ZWpE/MurYx2aJBakFu0mM/RG+isSc7EUU6L6pTLoxF3AvWATQKwsO5yhdA/pjNJEyo3JjaH4uE4UWHxljDO3nvBELfQ8iwflNXIiTJWM3jPV5pydjiyvrrnPOlzu7n2vWGWQ6DjeBALtctPU1fXBDVBKRe55XYlmlW0YM7csgJ6pd1ACiIfFZKjm+zbBd0CZGvSxc5/FwUAoDbof+oR0OQeEHHiWVeGR95A4i3eHP3xTW/ggmhA++0xM0AguO1pHSVLAW6uj6SvwyyoaripWa6M69JtEpuj0KQHD9NRuxPTCUJJ0hp5vtldjddznuGoWBgSYmTUJ75MlcT8JPhiKCBXWYptnzYHfqwHnqHqjGxR4bdVwWAqAWp1FvmY2Eh1ZGoGArAnNUimkU2550JScBnn9kZ8nMg==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BYAPR11MB3367.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(366004)(8936002)(76116006)(66946007)(6506007)(53546011)(9686003)(66556008)(110136005)(2906002)(38070700005)(52536014)(26005)(5660300002)(316002)(66476007)(38100700002)(66446008)(71200400001)(83380400001)(508600001)(82960400001)(8676002)(122000001)(64756008)(186003)(7696005)(86362001)(55016003)(33656002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?hBrfFHNf5MTTjZOviLHyL1JgH4z2KC+sC2LMl8k1/pkkI95ahCG6kUueXRP2?=
 =?us-ascii?Q?4/i96pq9vTPTSBU9ln/zuHqZ05X5iJWziiytwnO19SGckDIKHrXjxspx4PrX?=
 =?us-ascii?Q?KyyWBWdaaoDbW5nia6xnzMjH5xqAyjbv02CisnTHWePvZxsI7WWRalJDf78D?=
 =?us-ascii?Q?PwLGLTXKv5MK6CBGjxwGX3BLQ4TAREUiKL83KJq8yG1Q5gktOp14BBoqJmSj?=
 =?us-ascii?Q?3qwEvOaQEvWx0lXVZthpI/CJi8RR16RDxIr3LMBW3YcWS4MvfYlR3CjlLXaW?=
 =?us-ascii?Q?6d+O2lPFgyu24NH+/iNuny4h/FXVmtyLNmtu50WlkLI0sWP1Iq3DtKGdYEqn?=
 =?us-ascii?Q?YsIVwv6F0htyqJWtYs8ZLGGSAZoJ61ebh5N8BMQNt/mU++sbOkqhnHGGXUjl?=
 =?us-ascii?Q?fHwpJIHF2wxQ2wLINdfxRsPyrfcyyVFvbkzYYAORLliUKOuVrMeewOsKCuVr?=
 =?us-ascii?Q?ujYB+l8+Ke9Gr1VXkK+mF6Ed4KDt8smWpIAdLlJ52hrUeyJaO5EKe+ej60tF?=
 =?us-ascii?Q?s2uk96QqMUlcCNCz+IE1MjbQxK1/8V1BBM/QbEsmGGs9oFYt4+ls6RsCRN4v?=
 =?us-ascii?Q?yfhCeVw6dwlDpJOWfkaVO0TbooTQZIhtgAn6asXo4BXGysf4unEZWGqpIM1P?=
 =?us-ascii?Q?EdFEhAMq5Y2e0Eg9fmUEwYeGb/NO9G1E5ACqBAcgBONrGVxkw0h68Uk8wR54?=
 =?us-ascii?Q?2hdY/xYm50qwd2GNNlGao9RO1oUnsxN88xGDFEPhH9NB7K8t4L1XQhXGRon2?=
 =?us-ascii?Q?wSx3JvE7bOAze5lGI8MhPK+22PG34U+ZggSaxYWI4ePQsBES+t58Kor/xUxD?=
 =?us-ascii?Q?7ttPoMWDlI8TLpYIgPW9TQ4J55ZfLUIxPhrpCOMFZf8eyjAxyUz7M4rsq837?=
 =?us-ascii?Q?K0qiAn65S2a7wG5hcO0g8RSB7TxcbVDk2pcoUSxrBm24GOn6zsTqj+IF09ts?=
 =?us-ascii?Q?w0FmPCRhHudp5Z7DgfJKGaxbYxDD1cnEF9sjr5WepB6bcS7+VGqowEV0KAT2?=
 =?us-ascii?Q?o3DWqSZI8CKnKZhviWQeUaKow9XaOjfz8ym06sRz27zqkURTj5eI+375jhRT?=
 =?us-ascii?Q?eF8Grl/A91bu3dlzHaTRbvKpokApfu4ertSKAgCEyCcdApc0+9F7VJ1hb4GC?=
 =?us-ascii?Q?0CEQll8n1/VUlXS5a9Aeos8y8nCLgd+WKD563LwU36IN45MfBEpAjDbDDkxt?=
 =?us-ascii?Q?43WO+5/iCHGSbBaQ4nDEpMia+REnHmY65434tRQwNoL6r/10dbkv4i+epg+6?=
 =?us-ascii?Q?WC5ZudutkKskA9ow9Ezsym1Ef9WuIKrBiJBbXM/VQGVZK5ihhLlu+lpSlA65?=
 =?us-ascii?Q?c/cQjs9kCY9btyhzh4qJSbzEKspid08oorL99Gv2+EdYIZ1CJg16wKGI6h2O?=
 =?us-ascii?Q?1tXVrsXZWI0GJaIPhduDLvvLxF6sFVScbn+fWoYnyg4gDSD1PpNxtDFXUdW3?=
 =?us-ascii?Q?7eR7z5Mq57zCQQlk9PvNRbpozpzg8g+FS/qnVProPwohUw9zUphrMktSDOhl?=
 =?us-ascii?Q?3MegibKqj8LadPk6ReXCMFFp03lrOW2WmRHCNP4RKnHBpg1a8yp1WBTTd1/q?=
 =?us-ascii?Q?HugSRg/yXOuNiosFe1sJiwvxhpEGMPDn14fAp7JsE33vOH4vNfVdFZ0OgXDn?=
 =?us-ascii?Q?zA=3D=3D?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BYAPR11MB3367.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: f8d97030-94b5-4797-0ec6-08d9c5eda0df
X-MS-Exchange-CrossTenant-originalarrivaltime: 23 Dec 2021 08:24:24.5592 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: nDVypqaMtyr0Y1A0i5Rrn1kJkwqNXL3kjLLiCwT91k+ciWBOYgdP+gj7ckMi6YsRdfhEOk42y22xYs4Q/EzcIg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BYAPR11MB3333
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [PATCH net-next v3 12/14] ice: Advertise
 802.1ad VLAN filtering and offloads for PF netdev
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>



> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of Tony
> Nguyen
> Sent: Thursday, December 2, 2021 10:09 PM
> To: intel-wired-lan@lists.osuosl.org
> Subject: [Intel-wired-lan] [PATCH net-next v3 12/14] ice: Advertise 802.1ad
> VLAN filtering and offloads for PF netdev
> 
> From: Brett Creeley <brett.creeley@intel.com>
> 
> In order for the driver to support 802.1ad VLAN filtering and offloads, it needs
> to advertise those VLAN features and also support modifying those VLAN
> features, so make the necessary changes to ice_set_netdev_features(). By
> default, enable CTAG insertion/stripping and CTAG filtering for both Single and
> Double VLAN Modes (SVM/DVM).
> Also, in DVM, enable STAG filtering by default. This is done by setting the
> feature bits in netdev->features. Also, in DVM, support toggling of STAG
> insertion/stripping, but don't enable them by default. This is done by setting the
> feature bits in
> netdev->hw_features.
> 
> Since 802.1ad VLAN filtering and offloads are only supported in DVM, make
> sure they are not enabled by default and that they cannot be enabled during
> runtime, when the device is in SVM.
> 
> Add an implementation for the ndo_fix_features() callback. This is needed since
> the hardware cannot support multiple VLAN ethertypes for VLAN
> insertion/stripping simultaneously and all supported VLAN filtering must either
> be enabled or disabled together.
> 
> Disable inner VLAN stripping by default when DVM is enabled. If a VSI supports
> stripping the inner VLAN in DVM, then it will have to configure that during
> runtime. For example if a VF is configured in a port VLAN while DVM is enabled
> it will be allowed to offload inner VLANs.
> 
> Signed-off-by: Brett Creeley <brett.creeley@intel.com>
> Signed-off-by: Tony Nguyen <anthony.l.nguyen@intel.com>
> ---
>  drivers/net/ethernet/intel/ice/ice_lib.c  |  27 ++-
> drivers/net/ethernet/intel/ice/ice_main.c | 260 ++++++++++++++++++----
>  2 files changed, 238 insertions(+), 49 deletions(-)
> 

Tested-by: Gurucharan G <gurucharanx.g@intel.com> (A Contingent worker at Intel)
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
