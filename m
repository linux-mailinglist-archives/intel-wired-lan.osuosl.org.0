Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6CE3246E69C
	for <lists+intel-wired-lan@lfdr.de>; Thu,  9 Dec 2021 11:30:08 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id AA0D64052A;
	Thu,  9 Dec 2021 10:30:06 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id JnHkLDWkBPpU; Thu,  9 Dec 2021 10:30:05 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 4315F40547;
	Thu,  9 Dec 2021 10:30:05 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 3361E1BF2F4
 for <intel-wired-lan@lists.osuosl.org>; Thu,  9 Dec 2021 10:29:59 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 1BFB6607A3
 for <intel-wired-lan@lists.osuosl.org>; Thu,  9 Dec 2021 10:29:59 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp3.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=intel.com header.b="gGDyFV/N";
 dkim=pass (1024-bit key) header.d=intel.onmicrosoft.com
 header.b="Ve88rhWG"
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id nMiDmXI-SUPD for <intel-wired-lan@lists.osuosl.org>;
 Thu,  9 Dec 2021 10:29:58 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 46E76605EF
 for <intel-wired-lan@lists.osuosl.org>; Thu,  9 Dec 2021 10:29:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1639045798; x=1670581798;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=y+kTW/Zbbg7iP06115uCohDxOSIV0Zxcc/g19pPSBnA=;
 b=gGDyFV/Nr1my4WY+vo0tYpFU+e4zeiqkHDOta+0be9SIL026f1kypX3r
 G6ypLcF0prelJoamztlTqe2ROSeZsrchOIk7HH1Q5z9OpvljIwxjDJXTg
 FPIANYOWmH+9KB399lIp7f6kaRbh373XAzQQm6YHyzKnwGZm7Up4Q/YfX
 K1DfDDj2IiDuxTLAtNcDB4MOaQO4uMnvH2dHqkM+fynF7Xsq10DG9q1eQ
 Wii0Jw5C/9Olh3Fl8KXCM9YoLBkO9H5hcUjUjVEmDsfHDxYPHWl3hAKlN
 qm0H5ZdiUOhhv99stbvIiPQ695BaOS29Rzzl1OjwghlTgrtWxE0M9ki2K w==;
X-IronPort-AV: E=McAfee;i="6200,9189,10192"; a="262173328"
X-IronPort-AV: E=Sophos;i="5.88,192,1635231600"; d="scan'208";a="262173328"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Dec 2021 02:29:57 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.88,192,1635231600"; d="scan'208";a="750305170"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by fmsmga006.fm.intel.com with ESMTP; 09 Dec 2021 02:29:57 -0800
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.20; Thu, 9 Dec 2021 02:29:57 -0800
Received: from fmsmsx606.amr.corp.intel.com (10.18.126.86) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.20; Thu, 9 Dec 2021 02:29:56 -0800
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx606.amr.corp.intel.com (10.18.126.86) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.20 via Frontend Transport; Thu, 9 Dec 2021 02:29:56 -0800
Received: from NAM04-BN8-obe.outbound.protection.outlook.com (104.47.74.44) by
 edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2308.20; Thu, 9 Dec 2021 02:29:56 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=KQ0f30pslmqgdNUeU0UEeeV3qHOxu28MXe4YSL9MmLrdcraVcxMUpPdgrHsHIY6d9nrdGFFxo2MbtzIWv+jzXXQnkNfxkdF4235oQxz3USOzWaNtAv7VOv240N1JffTY8Jj62zsY+OthhHjd65pG+Ny+XtgUvZsi+VXOTaSP9q1ibCPChOcALBnTI+zMfMAJ2gJWq73PFxXrBHR+r2N9ctqB10F/kcgqvubOh6kutH2BTyJ/hkEyzKRRgA1xRhQBQtVdHPKUbfYq2xBY+5Y5dDbbIfYNMsXO2NAtB/ybhcKNlgDSNstz9rIRA0Jy2DbztSOzPsq1RSqccG3RDBP+xg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=hgA2ewLAtexzeBl+F0KQ0JNcAZlW83380vwq/o//SFw=;
 b=FLbMHN6eC6ixWcmf5AMca0xHJHRYBo351lb8nt1+9bpdypji1ZHF2KmEBnf05mSAeB+Y6LPj6xisnuBCTRODciagb0k00eCLI5EFOBxARHq7qZ+m8GvF2saqkvKwrTySTeiYCM69wsH6y9F2bdkL7fgyQgH5b4w0VIHuWbFK0gOGFE6hOJEzqEsDIL85g1G3Q1yh/YR7Hw4fV/xVrQ6TYkkrT5uMSOSfOObb7Jbx/pWOeg/rTTfpduVjt+W0zv6hkwed3NNPrUpn6S0+Ii7MlUzNXI/61Oq8K1KCETo235uktajBGwKiA7uSkMuZoyb0uaA6/AkwJgLB1ijwmG3Hkw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=hgA2ewLAtexzeBl+F0KQ0JNcAZlW83380vwq/o//SFw=;
 b=Ve88rhWGX5fbs+xiDECQIL6VUOw4bCR846WQanKrp89dF5TY3M7QptCAYXlYztBkhnhkMhn3F3Z8aECefLAATBdoW6aClyNBpucjZ/j/IkCbDf4TbXO8WWBFESg1pQlOFOUjrSEb1M4G98/Y0jCIQ+9Ssx6O7b1z5sW/PzsudF4=
Received: from BYAPR11MB3367.namprd11.prod.outlook.com (2603:10b6:a03:79::29)
 by BYAPR11MB2773.namprd11.prod.outlook.com (2603:10b6:a02:c6::21)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4755.11; Thu, 9 Dec
 2021 10:29:54 +0000
Received: from BYAPR11MB3367.namprd11.prod.outlook.com
 ([fe80::bc02:db0b:b6b9:4b81]) by BYAPR11MB3367.namprd11.prod.outlook.com
 ([fe80::bc02:db0b:b6b9:4b81%4]) with mapi id 15.20.4778.013; Thu, 9 Dec 2021
 10:29:54 +0000
From: "G, GurucharanX" <gurucharanx.g@intel.com>
To: "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH net-next v3 14/14] ice: Add ability for
 PF admin to enable VF VLAN pruning
Thread-Index: AQHX55twcxB6BwLUZkK73KbXRRtDZKwqAAYQ
Date: Thu, 9 Dec 2021 10:29:54 +0000
Message-ID: <BYAPR11MB3367C0960EC463E50431F9E7FC709@BYAPR11MB3367.namprd11.prod.outlook.com>
References: <20211202163852.36436-1-anthony.l.nguyen@intel.com>
 <20211202163852.36436-14-anthony.l.nguyen@intel.com>
In-Reply-To: <20211202163852.36436-14-anthony.l.nguyen@intel.com>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: c0dd10d0-64a9-4fb7-abbe-08d9bafed726
x-ms-traffictypediagnostic: BYAPR11MB2773:EE_
x-microsoft-antispam-prvs: <BYAPR11MB2773BABBAC61919A91B2AFEDFC709@BYAPR11MB2773.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:8882;
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: YFkSKV3fHXdmMUICulo3Lgx9gBbcdPdJF/MjcyDYZ3Tys7IoRAjq0Rr0sVAmA2OHeucDCLlzVltCb/4j11irHp62HoC/Izagp9vkXnLZW/is6hy0eReDAupDSPmgAwRIystwWAbb0onqxKhYjbtiznPJMOIwyNzrvNv118Xauiaq2lS34D26XggTaqPqGRUAOZmAO07gAejwYoQKnyELbBmhUJ203JOFikmqG2ZkiYaCPRiaTwFN6ObrRn9BoJTuDgNOhh9qGzR5jMFYjYakqeI47WJ5ZkLU9Et5hE1dXkjFjjss11zgc30RtGxW97wHCGNfUm8GJ88RWWllh7pV4cuc1uscVikqEBK+6J1XLWPZqL6Znuphk12f2/vyyGFquEXPvGQEMNfOczBYXgugAmvpeBo6kUKLAl+myMzgABHMY9D3oq8/n44q5JPeScKPfTbOVU+N0E9COfcFzxIBUqMyIlaYXnIOdWqFRR/Vvng2I3Pd3egfSXaMVsDIZYdgabb+SLS08IboTIeNMKmp2p5lqKWdrC6WdUaOVKdlLhReqQasIaR3P2S7a3Tu4U+eOv0eEnAxC/4T9pJ7ko9Ji9odF3ug842rlZbEiERbnnC2u8PQpFbtlsV4tNL9oHDodsHJSpORZjzQMPnPD5680hicWSUgg55Qz6HzpKNiJXBkKI9XrfslExiIE56ykf13lGSTULDZFEQBGhYx7/KYmg==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BYAPR11MB3367.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(366004)(186003)(6506007)(55016003)(316002)(508600001)(86362001)(76116006)(64756008)(66946007)(66556008)(66446008)(8936002)(82960400001)(26005)(52536014)(8676002)(9686003)(83380400001)(66476007)(110136005)(122000001)(33656002)(38100700002)(5660300002)(71200400001)(7696005)(38070700005)(53546011)(2906002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?EQuEfJRWXjlHnS4OdBLVy+lAlci6cxSCRlaPWfUUcq3cTOZeS1OF2dqG0DU5?=
 =?us-ascii?Q?gWlIgPybdPUS0JA8p6jJT4EH2PjaeB21qmTq5srswp+h615rsUiDkERWU/6Y?=
 =?us-ascii?Q?IznXxNgV/kIskGklBN+VFSf+4hs0eQUvYpxdVAu0gS1s8sGlvCn46q+9NFDv?=
 =?us-ascii?Q?BRqHm5O/n8Vps2Zx2gSd/o5gMBb5rhQzRO9HZf3DJeKtAltriBzNVpvZxgqp?=
 =?us-ascii?Q?zyx9W4Ai/8B/ZWcBAbemddJ4KTjl7+cIs03ekoU2Yo78E7IT4iyxd+MabBmX?=
 =?us-ascii?Q?VAoykWIYkqeVK72XLt1YwWiMNvH9bj0MRzWXn1A81Qj1CZ0eOzzdn0oxVEKi?=
 =?us-ascii?Q?dLuLapOBPWIEYhSerq2fyz4uTIjJSmbcqHp0vtgo65kCmL/kFoJ58x6oMWde?=
 =?us-ascii?Q?S0SNPC6LURL93YSaeuLns/Z0V9A9KLwSNm8WXnMW4ZspA5xBr6QGtkJE4uGk?=
 =?us-ascii?Q?K76iPklET1bTr6klfIL+df4dDQLI69cNYzPjQDexEGBglKLezFU7/7ZzIK+E?=
 =?us-ascii?Q?64RrjqStQ4wjNNiosiarTsdHf9LMgfjSPY7+iai10wCkB0cchfLHaPxXrf8h?=
 =?us-ascii?Q?1jt6ivxVcJUDAdKl91Brz8+oFW0KaxX91GD8mE/o6E/suP0tqrcSya9b7cEU?=
 =?us-ascii?Q?1jrf1zY8yjSQpLum0QVWQr47YYa0rErViIVVq2yH9LYUC56e6hyxcy8gnN6G?=
 =?us-ascii?Q?55MoStMox9yMXGRP0GJucdimin4q9gaoHCRzXl+ztWBp3ffk4S68HYD8jYDY?=
 =?us-ascii?Q?TGJA/fcdfrnmWiYHv+OzWQm+PElK4vIoj+Hryngyu2neLnQ3Q/5CJZRfBQ5e?=
 =?us-ascii?Q?2MF3mS6P6Up2pTKgTBVYYsy4t0TtYZevgcHle555sVQNeuuTuEPAsi6toBKl?=
 =?us-ascii?Q?plaOb0wepRH5JItHDDq+r79JD8KULpdgZCbjArzg1EJpBoi66pLxBKOqWjSD?=
 =?us-ascii?Q?Y0pgbMOENqDaDppJzHSIPGoBPKFrdI558/jZJIxvKE22ltvzi8HTs9XYe8be?=
 =?us-ascii?Q?4YMn4+z6CyiCRhze4RiuHm9HU8pRdfv2WTCkPZVlJHVJIqhijbrRiKqKU7ia?=
 =?us-ascii?Q?YG1zqs9E9/2mOLlo/xrNe9TNBoEqI1gF5mDu/ru9oMRi0M1ZIsS5Po/EJ6Mi?=
 =?us-ascii?Q?sN8YFA5Q6IpxCwayPEiRtQWeGt+8WAvPvvtmhHcGCUE9plc9v0tRUjeMZT0Q?=
 =?us-ascii?Q?en9J94YAZ+RZcxLnxfWFCcpe5YA26KNNirsaRBVEgZbiiOwfzs+Q1HrfLArZ?=
 =?us-ascii?Q?uJ/9+WVm+EtbWNcCaU3xTTASE1cFtokkFO0Qix94e3iOqKIwsMBxoieenEHU?=
 =?us-ascii?Q?G60YUPpZeCW3CG3fMPW2t88vFACFLqnHmC33TCj/EwTo9ml2+x4lXd7oMbi1?=
 =?us-ascii?Q?pVFEc95LaPkJ9CrdEnGMVCd50bY50RubHiz8tpj/c4Z5CEmTGH5LflO4xiwv?=
 =?us-ascii?Q?Rmeis/s6NAYqqUYcXHyuHwJ5Pn+her72jGygLKHD+05HpExlzkEfpDiPoxUI?=
 =?us-ascii?Q?HnkcFgmN3bTvhmAR1d3hq3W+0tjLM5f9RoVmdXHMZaij3qc+rwAkkTyEdLV5?=
 =?us-ascii?Q?Cng+D43CaqTowX+XydkxJjb6QnUACWCQ0o6cBAsv5lzjjcL7PAoSzEBVxTHO?=
 =?us-ascii?Q?0nBNqS3vLX1r5nVf4g9GK+Y=3D?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BYAPR11MB3367.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: c0dd10d0-64a9-4fb7-abbe-08d9bafed726
X-MS-Exchange-CrossTenant-originalarrivaltime: 09 Dec 2021 10:29:54.2637 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: GXPqFXK0rSK+eS4hmc0Jckc1qXQNXu0N3c77c7Iqz/7XR/DRJj/nkMy78wg6DTRyWEFu0XgLrZjnHA25KjWFeA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BYAPR11MB2773
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [PATCH net-next v3 14/14] ice: Add ability
 for PF admin to enable VF VLAN pruning
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
> Subject: [Intel-wired-lan] [PATCH net-next v3 14/14] ice: Add ability for PF
> admin to enable VF VLAN pruning
> 
> From: Brett Creeley <brett.creeley@intel.com>
> 
> VFs by default are able to see all tagged traffic regardless of trust and VLAN
> filters. Based on legacy devices (i.e. ixgbe, i40e), customers expect VFs to
> receive all VLAN tagged traffic with a matching destination MAC.
> 
> Add an ethtool private flag 'vf-vlan-pruning' and set the default to off so VFs
> will receive all VLAN traffic directed towards them. When the flag is turned on,
> VF will only be able to receive untagged traffic or traffic with VLAN tags it has
> created interfaces for.
> 
> Also, the flag cannot be changed while any VFs are allocated. This was done to
> simplify the implementation. So, if this flag is needed, then the PF admin must
> enable it. If the user tries to enable the flag while VFs are active, then print an
> unsupported message with the vf-vlan-pruning flag included. In case multiple
> flags were specified, this makes it clear to the user which flag failed.
> 
> Signed-off-by: Brett Creeley <brett.creeley@intel.com>
> Signed-off-by: Tony Nguyen <anthony.l.nguyen@intel.com>
> ---
>  drivers/net/ethernet/intel/ice/ice.h           |  1 +
>  drivers/net/ethernet/intel/ice/ice_ethtool.c   |  9 +++++++++
>  .../ethernet/intel/ice/ice_vf_vsi_vlan_ops.c   | 18 ++++++++++++++++--
>  .../net/ethernet/intel/ice/ice_virtchnl_pf.c   | 14 ++++++++++++++
>  4 files changed, 40 insertions(+), 2 deletions(-)
> 

Tested-by: Gurucharan G <gurucharanx.g@intel.com> (A Contingent worker at Intel)
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
