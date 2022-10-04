Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 83FA25F3A45
	for <lists+intel-wired-lan@lfdr.de>; Tue,  4 Oct 2022 02:00:46 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 22CE740B05;
	Tue,  4 Oct 2022 00:00:44 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 22CE740B05
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1664841644;
	bh=PUz1D5BdLEHzGp0vsMuHiqIq+zkkL8XU6UdiQBQDRhA=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=lsFFDNiliQsY4uiW2tv8iBd6ogvBPH5R0vYAoMuh9PvO0dtTyfGwdvf01AN2MnE8u
	 Sb30aY3rSBA5cyON86Xp3fvKggx+JOAJ3akAhHDmF31pQPw3MX+83iIA78+CatOHRd
	 flJwjWAKBcCNNqotWXVWpGpN6poW3SkQZ1moAtkBPx31IoYh7lcHNyHjCd9oZ/BOzo
	 ay7XlzvlyOkqN8XP89sItaaHCJitQafNNM3xgDzJ45zaKggyMZ+48vZy/ti1dO7mew
	 YnkmKQ14vs5/3XeD/Mwrb8KsKoXcTN+lPgQluz8yx7li4HhRC83iuFwbuEs6cmjQnq
	 BbRuwuiDmCuyw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ugsH7dxA3SA8; Tue,  4 Oct 2022 00:00:43 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id BD60C4013B;
	Tue,  4 Oct 2022 00:00:42 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org BD60C4013B
X-Original-To: intel-wired-lan@osuosl.org
Delivered-To: intel-wired-lan@osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 7D1D51BF9AF
 for <intel-wired-lan@osuosl.org>; Tue,  4 Oct 2022 00:00:37 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 606A34160B
 for <intel-wired-lan@osuosl.org>; Tue,  4 Oct 2022 00:00:37 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 606A34160B
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id CMnbpSiBj_Bn for <intel-wired-lan@osuosl.org>;
 Tue,  4 Oct 2022 00:00:35 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 7A9AE41600
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 7A9AE41600
 for <intel-wired-lan@osuosl.org>; Tue,  4 Oct 2022 00:00:35 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10489"; a="329191806"
X-IronPort-AV: E=Sophos;i="5.93,366,1654585200"; d="scan'208";a="329191806"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Oct 2022 17:00:34 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10489"; a="656942174"
X-IronPort-AV: E=Sophos;i="5.93,366,1654585200"; d="scan'208";a="656942174"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by orsmga001.jf.intel.com with ESMTP; 03 Oct 2022 17:00:34 -0700
Received: from fmsmsx609.amr.corp.intel.com (10.18.126.89) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Mon, 3 Oct 2022 17:00:34 -0700
Received: from fmsmsx609.amr.corp.intel.com (10.18.126.89) by
 fmsmsx609.amr.corp.intel.com (10.18.126.89) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Mon, 3 Oct 2022 17:00:33 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx609.amr.corp.intel.com (10.18.126.89) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31 via Frontend Transport; Mon, 3 Oct 2022 17:00:33 -0700
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (104.47.56.172)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2375.31; Mon, 3 Oct 2022 17:00:32 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=l4KnUsyRHIpMXBbxbPXHDiP8elYXXgkynk/DS0i/gz5VHCmhn+PFWFc5GDVHfp3wbIQbzHd7dOsk2/bHEtbYRLij47MUzah9a597gEW1e3E17fmFf3cso6fNuPFiZoxlrfxeNG00XF4af/yNvmrWSPne9NwbAjbLfC+MctcJFL826OHrD9G5WDUm1wwtuVU2B9yX+9bZjbC2E0iMhJIPUQjiR5KxSTi0qv1R+ypnANARwDXeFHTQJkkwciqZR1NWXZA16yK8kMzlK8hcD9dUfSLmHgKm15JVqgOoRt+5FAf1fQAMJzrrAW5RUEFXBzsVm070dlFb38HdcCvCL6YoSQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Y7fSO2vDlycSHH7TlDonECtpQZjFrAYSUO25SiARHrs=;
 b=hO+CsnCHfCBwqixbagvL4d8cAl9T0v3m3Mw5DWntbMgDq6dOkv8al8LPDXnamU8Mbd7LPMOAgSHIJTi+LKpy+TXbZruj4mSGM1GRmUBGDLKi4a7likSGsvzfQFi64hb/SghnW4kK6AVffIDSOMeFtxNKmdhpSRnGMY1Sxfczp7rJRZoGcMKISS4a7ZNCcHt2k7jqLzDz7pYYrMEGNUZRijvtSNKXDQlInSkNi6tabD9vK+6cOURO9UG7lIqwEyfdKMQu220kn5xsMToCATUv9Waxuz29xqXIFCSlidglvXFLK9qS6UDDjwRyaRHB8fdWAPtOn/6huTRsIdJf0cmriw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SJ1PR11MB6180.namprd11.prod.outlook.com (2603:10b6:a03:459::14)
 by PH0PR11MB4967.namprd11.prod.outlook.com (2603:10b6:510:41::14)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5676.24; Tue, 4 Oct
 2022 00:00:31 +0000
Received: from SJ1PR11MB6180.namprd11.prod.outlook.com
 ([fe80::2720:48d8:6727:6a7b]) by SJ1PR11MB6180.namprd11.prod.outlook.com
 ([fe80::2720:48d8:6727:6a7b%4]) with mapi id 15.20.5676.028; Tue, 4 Oct 2022
 00:00:31 +0000
From: "Zulkifli, Muhammad Husaini" <muhammad.husaini.zulkifli@intel.com>
To: Kurt Kanzenbach <kurt@linutronix.de>, "Gomes, Vinicius"
 <vinicius.gomes@intel.com>, "intel-wired-lan@osuosl.org"
 <intel-wired-lan@osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH v1] igc: Fix kernel NULL pointer
 dereference
Thread-Index: AQHYyElhgYhTp8M4U0a/oNWBya3wdK3fSOGAgABFkVCAAHRIAIAddDrw
Date: Tue, 4 Oct 2022 00:00:31 +0000
Message-ID: <SJ1PR11MB618088516CAC5EF1AB565DF4B85A9@SJ1PR11MB6180.namprd11.prod.outlook.com>
References: <20220914144942.22700-1-muhammad.husaini.zulkifli@intel.com>
 <87a6714w2w.fsf@intel.com>
 <SJ1PR11MB6180E0B962FDC15ADC22649CB8469@SJ1PR11MB6180.namprd11.prod.outlook.com>
 <87tu59xj7l.fsf@kurt>
In-Reply-To: <87tu59xj7l.fsf@kurt>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-version: 11.6.500.17
dlp-product: dlpe-windows
dlp-reaction: no-action
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SJ1PR11MB6180:EE_|PH0PR11MB4967:EE_
x-ms-office365-filtering-correlation-id: d3ca05e7-9379-465e-fc9a-08daa59b7437
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: TRkOizY2cg5XYu1oh4HI7XrCLweonKxQWuSalSDXn+cTRLZFHscdnSA71AuGaxkf7CROIKWGkp2EHLcBJxWU1npG+q7K5mB7Gqipi/+P+nI+WaoBtG5i/XQP8hfSD4y5qOzPXrpzHylcFu07uMh5PLyIB+BaNZNW5RCSbbHdiNWIzpC+RmGnVJLnnG4kuqvZcBIHE6qSeWJJe/Qo7m36+whJGvTw0sCI8V4425DQe2846mlhVtrVTpngMCabBFNKTt0hbcfzshtOKxxFN6mTJMMtXH4ZZyB+TMvI6Vl6jKN+SaaD7z8O6MMVK7b8pybtzORx8ukFWaunwMvMUYX6dEV5xVzyXQH1X98URXHuxdHHgRBP5zbRiwqkSAbOE0wip6p+7FeXAmxftULGnAGs8m7QCmrhu8PzRLR1+SbcO3V3iDhGuiy7+gdO/6IPv8r+fHPH76ZVmNZ4QazmUnvGrKM/73lloGq4IZ5t6JV0ppiI5PK8g7EB3xkmW5k9ve2JiNpAYlIE+MxnLrbBVm6TXg6BSeAO6ljN/0xsd4AaE1z8tXatxsloZRtM5X5/PPeE0mQhX5sndF1NKl3A3NFWcAc8F/ljrOcYSg2Ci0GB1k4xMdyqvL8M9CAR6V/Gt73o7ReE+BBYS0uUB3iNgRhSiUX1dJ1wtEdm0OPMvsc/XzhzqecpGi0xCtR23X2EC7wbmaGDF3iI7aAFJFAUI7b/UuJb9EOF54rFbfh1xj5l4bcH/Mdl4aSlOZ5ytutE4KAYyhzf13J1f7f9E3SzDZVoog==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ1PR11MB6180.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(39860400002)(376002)(136003)(396003)(346002)(366004)(451199015)(52536014)(9686003)(33656002)(186003)(8936002)(2906002)(66476007)(66446008)(64756008)(8676002)(66556008)(66946007)(53546011)(76116006)(41300700001)(6506007)(5660300002)(7696005)(26005)(122000001)(38070700005)(82960400001)(83380400001)(38100700002)(86362001)(55016003)(478600001)(110136005)(71200400001)(316002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?Xqnverpo67DXVyNhLNClv4uMi3fBdH4S/z8hDqDDpZKUyzv8mhZUZyCBus2O?=
 =?us-ascii?Q?E3SZlSNeKAMdZiZc44yQaCWQAI5nnx8gQJ2Y/CrPcNn16zZDWCti547BDsZW?=
 =?us-ascii?Q?kHZccJnCRm8uuoTuBZMMpZKiSp+8wQZWkyLmVeF5yBe1mgX8JUXdj1FregHk?=
 =?us-ascii?Q?RiT3LdYNdj6fJ4TNrzKqBlEULQfNta+K4xVqMXnM4WwBobuq/t2ciwfzpliM?=
 =?us-ascii?Q?OxiX8Ta4pnFeLZ4V91xucSMbBI2wu3V6ZLScrwhcu5auMV3+F2MIWFRG2PhF?=
 =?us-ascii?Q?/xaAtueWgmMMsG6c7DKOWkfNfH9hBWS9VHXmMYix0sMKMjIEgeGib/eEjRbX?=
 =?us-ascii?Q?kfA2CGvYBk3Y0wjEBF6b5zanGan1Ym4DaHsY/4nc1f4oxoxeMxoJg+KcIprg?=
 =?us-ascii?Q?JAz4aiZRodp4WCkYEn0tKpu9YOp0uOusAtiGNJHkLjvpImAvbA/deNuhTrgB?=
 =?us-ascii?Q?GiSnsLzqlep2gr3RHFoRVsU8mBiW+FXSTBxJLGvixuKr8DqLJv9j3kDLuBfz?=
 =?us-ascii?Q?KC95L3/7KLUclyzEJIWkdFVhDiA4J2WxNfSZJ5z2XITHeUtlylp243YzjXqw?=
 =?us-ascii?Q?YRTdOfs8Wr7APabvJr0Ju3JXagMbWOFxcTHGttD0hUzVXlEkWKQfADdFOcsA?=
 =?us-ascii?Q?/9K6EXRnTKTbWfBfGoU28lKSUqg1f5apGMlWi+vF81XurqDNyjQXIpliKaYD?=
 =?us-ascii?Q?OZOdbuhUXQpeojER4at41q6XwhS/TlkuugOE5CBX09YE0Zaoi/1kQhdEaHof?=
 =?us-ascii?Q?lx4ML0MMO3cqVzddzhgAo/3ZM0d71g5aPRJYNXyIsr6LSQbs1768C7soSZE3?=
 =?us-ascii?Q?qEU8cuMQ5skMWfdGWnm9QeIN1nROXMbvQj/rI2m9hn2p2dYsGvfvh9jWIJIo?=
 =?us-ascii?Q?b3InXmeZpXQ4qrC1vo7AUY8VJ0l3AP4dPadnh4Uflwca34UEmoi+k3uhsHHY?=
 =?us-ascii?Q?c2CovCMj+ilYLHVDg+xAN5JHzxPN3LO14iL+8cCw3bt1R8831Lz5qkJ/P068?=
 =?us-ascii?Q?sgQ7YNyKLwHaI1ndK58aEDWK8qrrB+kWKMjelxbulg/P8sdV6hyndFsjQhUd?=
 =?us-ascii?Q?QiBA1lxpdM3rl/hGC0RjSe5b7w4QDoRQOd9LLKzjzYk3LiGxvx+y0RT5K2Wr?=
 =?us-ascii?Q?jRy3yhujtg6lVs6iAmJ1PMWCVyZrwgUPC5AhftjgcGJDdy2lNpa9rkn1OKLp?=
 =?us-ascii?Q?+mkf61Ems7vsUkRUyjfu24RGOW9g/z3uHCAciDSKRTRRDGhQ9z+xlypgOr0u?=
 =?us-ascii?Q?z6sHA6nmmGAqqVWvGSXb99UlEOf2sP+ZDzMw3MpEq4yL84M8xYmtYvozjlUU?=
 =?us-ascii?Q?RSMuKPS6ryjZIVSOoOK2/GJW/SHsXjKdn2sdHUX9JVs/9jTMUJ893m7u7pq9?=
 =?us-ascii?Q?WeQYD1EmMTAF0hWopUweEf1Qr3zSJBoz2v9Ku9a7YpmjRDk51KUOgplew2IW?=
 =?us-ascii?Q?87+JdLmloYVYasCrZ1e9YxM5+AWxOL5ImiEDtjK9weaTBza16vrhToHWMIiQ?=
 =?us-ascii?Q?D4G0EgeqmaC5ymsUuyQIypRPPh2pOIU+LImdGTEAZ6uDZHqP04hkf0AtBDf1?=
 =?us-ascii?Q?AA18G5U1Gb1OW0xwUk3zLkiqXaT+SSWARI2qA0FY4lWu3owotxDNddDIm+Tu?=
 =?us-ascii?Q?ITkEHNJhG7+F+0YEDAjIQXI=3D?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SJ1PR11MB6180.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: d3ca05e7-9379-465e-fc9a-08daa59b7437
X-MS-Exchange-CrossTenant-originalarrivaltime: 04 Oct 2022 00:00:31.4217 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: hCMxYGEComybmnqzTGh6o+UZvvntsvCZLeDTyWX61g/RJHsB2di/pfjjGasLq7kSHbUtAHVUeA8TfV6kduokEpq9kr5ruVWAQJKdmoqcSrftYaZzyVKKq5m+v0ONUsqu
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH0PR11MB4967
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1664841635; x=1696377635;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=mFStxJOURlN8unarQlvMC1cR294VdenlBHWHTwRtyKo=;
 b=gedYVRS+eUpJMW7yo9y2wswNYm9taaYDRSPz1NmbcupYfZxLqwiiNiw/
 iQVLOHR4cc/Tw4yXGdL7FnvZB+A4VFG1Q4pgSnbUAJavaZuvmL43GBpkX
 n7lYvlb04a+uknO1b8xg1Lphtc4E5K8NmSCI33O5MOW3FLADYhEUBKORA
 1Avc7IIz+MuZy2cy8b78fUo9gto6xcfS+/fxJbekM54DJhhfxJ4x/vHnf
 qSRnYezG+8KEDRMHrzJ8Fq+NK4vnEpG133JRhp8ty46SR8N+p9m7QkNWA
 t4LztcIvd/kweT2khSxaQ+5r83aBkt5ovHX4uW6KWk103bfQTGGXZchuh
 g==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=gedYVRS+
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH v1] igc: Fix kernel NULL pointer
 dereference
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

Hi Kurt,

Replied inline.

> -----Original Message-----
> From: Kurt Kanzenbach <kurt@linutronix.de>
> Sent: Thursday, 15 September, 2022 2:09 PM
> To: Zulkifli, Muhammad Husaini <muhammad.husaini.zulkifli@intel.com>;
> Gomes, Vinicius <vinicius.gomes@intel.com>; intel-wired-lan@osuosl.org
> Subject: RE: [Intel-wired-lan] [PATCH v1] igc: Fix kernel NULL pointer
> dereference
> 
> On Wed Sep 14 2022, Zulkifli, Muhammad Husaini wrote:
> > Hi Vinicius,
> >
> > Thanks for the review. Replied inline
> >
> >> -----Original Message-----
> >> From: Gomes, Vinicius <vinicius.gomes@intel.com>
> >> Sent: Thursday, 15 September, 2022 3:04 AM
> >> To: Zulkifli, Muhammad Husaini <muhammad.husaini.zulkifli@intel.com>;
> >> intel-wired-lan@osuosl.org
> >> Cc: Zulkifli, Muhammad Husaini <muhammad.husaini.zulkifli@intel.com>
> >> Subject: Re: [Intel-wired-lan] [PATCH v1] igc: Fix kernel NULL
> >> pointer dereference
> >>
> >> Hi Husaini,
> >>
> >> Muhammad Husaini Zulkifli <muhammad.husaini.zulkifli@intel.com>
> writes:
> >>
> >> > This patch fix the null pointer dereference when dereference the
> >> > pointer that is expected to be valid but is NULL, typically will
> >> > cause kernel crash as below:
> >> >
> >>
> >> This part of the message only repeats that you found NULL dereference
> >> related crash, which is already clear from the splat below.
> >>
> >> Can you give more details about how you manage to crash? What is
> >> schedule that you tried to use, that kind of thing. Perhaps the
> >> problem is somewhere else and we are only hiding the problem.
> >
> > With below schedule, if you are not try to dereferencing the pointer, we
> cannot catch this.
> > Might be compiler already handle it. This is a guard to ensure that
> > "prev" pointer always valid Address before using it. It will always NULL if you
> have 1 GCL schedule entry.
> 
> Hm. Yes, prev is NULL for the first schedule entry. Nevertheless, it shouldn't
> be referenced, as `queue_uses[i] > 1' cannot be true for the first entry unless
> I'm missing something.

Yes. You are right. It should not be referenced. I was doing some development work
That time. Sorry about that. 

> 
> >
> >    Example schedule:
> >
> >     tc qdisc replace dev ${INTERFACE} handle 100 parent root taprio num_tc 3
> \
> >        map 2 2 1 0 2 2 2 2 2 2 2 2 2 2 2 2 \
> >        queues 1@0 1@1 2@2 \
> >        base-time ${BASETIME} \
> >        sched-entry S 0x01 300000
> >        flags 0x02
> 
> Well, with this schedule I cannot reproduce the issue. What kernel version are
> you testing? Mainline?

As per above, you won't see this issue if you not referenced it. I am testing against 
Mainline kernel that time. 

> 
> Thanks,
> Kurt
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
