Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 45F0181086F
	for <lists+intel-wired-lan@lfdr.de>; Wed, 13 Dec 2023 03:58:05 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 64A1460E48;
	Wed, 13 Dec 2023 02:58:02 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 64A1460E48
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1702436282;
	bh=c7yMumm7LeISIiEijkoWzk8824pirK9tRhmNTcBFWm4=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=Ykomdun4tzO1WY6vx1VU9tmy2BRwgqWDVCFXizgReNugyxqxoGX8Cn4iDE40LtTcs
	 oXCN5FKe1eMe5v+Ue/VRhH4j5Tjc1Vsucn6QhxZ9jjoKqmwbLhXh8FPOvs3BC6/XRj
	 cgHH6XrCSgxBSqJrlje58OstY45L9bfu7P7hl1HJ0wxf8JlnzZ/AfG6LjwiQm2RBRU
	 m+9T+L01hpSQK8T+cQCSEAEj2cHdNBRCxLHyuMO6uQ95mM5fVZWKC7s12CnywQoJ7J
	 8b5HmhitjB9uJ0CL7hjz/K8S73rEXyhS3SKiMxasEQY6CDfjgc+Jcj0AAgDans7juc
	 LGW2aib44vvjg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id VpsvPCH2H84w; Wed, 13 Dec 2023 02:58:01 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 337CF60BF3;
	Wed, 13 Dec 2023 02:58:01 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 337CF60BF3
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 4805D1BF2B1
 for <intel-wired-lan@lists.osuosl.org>; Wed, 13 Dec 2023 02:57:52 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 2035560E47
 for <intel-wired-lan@lists.osuosl.org>; Wed, 13 Dec 2023 02:57:52 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 2035560E47
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id zcdfwTjp9X-a for <intel-wired-lan@lists.osuosl.org>;
 Wed, 13 Dec 2023 02:57:51 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.10])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 59B3B60BF3
 for <intel-wired-lan@lists.osuosl.org>; Wed, 13 Dec 2023 02:57:51 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 59B3B60BF3
X-IronPort-AV: E=McAfee;i="6600,9927,10922"; a="2077787"
X-IronPort-AV: E=Sophos;i="6.04,271,1695711600"; 
   d="scan'208";a="2077787"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Dec 2023 18:57:51 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10922"; a="947019158"
X-IronPort-AV: E=Sophos;i="6.04,271,1695711600"; d="scan'208";a="947019158"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orsmga005.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 12 Dec 2023 18:57:50 -0800
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Tue, 12 Dec 2023 18:57:50 -0800
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Tue, 12 Dec 2023 18:57:50 -0800
Received: from NAM04-BN8-obe.outbound.protection.outlook.com (104.47.74.40) by
 edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Tue, 12 Dec 2023 18:57:50 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=FvM4ETQ9aw9bE+xVSOnS9eCvka2D45ZWG3Q1Ii34Dy80q26YersKDrtzEWUmDOr+V3+2RQm/SrULs7B8rHYiesXvSQWjv32F4BW2o8ZLqmFDtgctqkTRJaRH3ENecP1A0zRLUNu/BIHV5D4LB6Z/xFM7X9FADuPbtymkbW6dEaGlJxmCCiTzDnbdosNHxxXtHoGIX1YmHmhzQeQxjw3tyKer3xSw3tOE7caNpHeC+RwuA1lAz0U4wqlUdsFtfuK8p85arBqIOn3j8bKxq6x9zNs8Vt3TWMI9rs3pwaVz9qWep9BTEPogv8JVa++k0X3c4RdF+8tm4PhzmcTb4S8dyw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=qGHliAxxMdQ3pHGtbTctXVPXZ/PwCLT6feXE2g5u/3w=;
 b=hfYTZXkmTZmb2nIwyieQ+zts+OdHy7pF9H6oRPgyIsBKgeP7qESaXQX0BZ/ilBOjHMRn6H5aLTlEf/SVvY4hwi9ZfU9w112m28aCd/TC+CrBPggtI/VRiC3tqKiSdU4piHv89BO7r1LxNANuVeyWBgYQAsy1jpP5ddKRn2dGmyq6ma5oS/VHBabBZXqc3wLbVz1cKjhzpoYoHhhh0hGKv9OOOLtE+3Np+cBhDSM5+bnWPfFP/Rm59Mtmi3D2Ke7DVLRXrRZrYxQ3D0K6OWFB8N+oAUg+N6dxgypNMGEyzPCyX3sGB76uQMONoyMdaUhjYKdSKxgPGv9PQwUOl/G1Sw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from BL0PR11MB3122.namprd11.prod.outlook.com (2603:10b6:208:75::32)
 by SJ2PR11MB8451.namprd11.prod.outlook.com (2603:10b6:a03:56e::20)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7091.26; Wed, 13 Dec
 2023 02:57:47 +0000
Received: from BL0PR11MB3122.namprd11.prod.outlook.com
 ([fe80::954:6050:f988:740f]) by BL0PR11MB3122.namprd11.prod.outlook.com
 ([fe80::954:6050:f988:740f%4]) with mapi id 15.20.7068.031; Wed, 13 Dec 2023
 02:57:46 +0000
From: "Pucha, HimasekharX Reddy" <himasekharx.reddy.pucha@intel.com>
To: "Brandeburg, Jesse" <jesse.brandeburg@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH iwl-next v2 11/15] i40e: field get
 conversion
Thread-Index: AQHaJ+APWFQiNt0Ts0+7SkklWVKER7CmjfsQ
Date: Wed, 13 Dec 2023 02:57:46 +0000
Message-ID: <BL0PR11MB312209C4CACD0FCFB5E5AC08BD8DA@BL0PR11MB3122.namprd11.prod.outlook.com>
References: <20231206010114.2259388-1-jesse.brandeburg@intel.com>
 <20231206010114.2259388-12-jesse.brandeburg@intel.com>
In-Reply-To: <20231206010114.2259388-12-jesse.brandeburg@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: BL0PR11MB3122:EE_|SJ2PR11MB8451:EE_
x-ms-office365-filtering-correlation-id: 53d30292-c587-4006-e4be-08dbfb874924
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 1V4NRTrj9N/Jns9XMwtzB58ZCs+GuOjMUBWAD4y+MTfZh65H6D1jWCzLmY5Ze4abKisc81VtIwgRHdYo+8gy90Jq44WbB2RWolXvF8+tbvccquFWomNPjIQZuzxEJz6LqZ1Z8F4OPKU4dHY+aIWNlF1AG7DtR/PkmHA4VGZvi4SC+GgxpZOUGYh2Ruw3kfv3lXv7m1l5SVBxvzJVIq5Qtwtyqq8L4HIpxWoAz6pQLaFaORmCjO9WR+iGC8TRhvbr4b+XNSwJUQG8rMqTe/Qq8l60pAKKZQ0TGNMvfYTeAubq5E4ojcdi4vKWglq4Q7xCjuYnqElscJWqlopH7XxjPpJQ1oyzljMKHEqK3HP9sYdDwJJUVMKzeAIAWqEpOaxAX1dT54woiEw0RULKu7DIpqMOg2pBv++HPfob/Xu1Aph3wMb4Z94aolnQDOPfiQGZmOYYZ5x0pZPR9yxpuzyvJWQeLN8Rx4FcRfFH82vLqo9OVtfFzTE5djY7NxhyT/8hHy9kCuuruXMQGiPdsKl7jlmPvHsj3mrE0RHXsCLrcxS9rQKOgFOkXghj6uvuyp5mdtnlPH/YriwSGD3y4SS5jxdESqmhM39ZQ+RRGwYxTV0Y8/PlWQuD56O8ojf46pty
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BL0PR11MB3122.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(39860400002)(366004)(376002)(396003)(346002)(136003)(230922051799003)(186009)(1800799012)(64100799003)(451199024)(8676002)(8936002)(2906002)(4326008)(52536014)(316002)(5660300002)(55016003)(66476007)(76116006)(66556008)(110136005)(66946007)(64756008)(66446008)(54906003)(478600001)(38070700009)(26005)(6506007)(7696005)(53546011)(41300700001)(9686003)(71200400001)(82960400001)(83380400001)(33656002)(86362001)(122000001)(38100700002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?mirQX1SVSc0rcgn/oEiPTVLoHV5LONTmajAv4UOOrP8e5E2n4jDxbGEraMj2?=
 =?us-ascii?Q?T7milczPXObxFGxf9JVOa/fwwzBrWfLg6guazvSqjsiMHsHi9LMGEzBwNQf2?=
 =?us-ascii?Q?I7Vassc2UuIXHk10N2nMVggVxydZOb4pMtwY41EY/wo2BJjudUNl9nlXHTck?=
 =?us-ascii?Q?p5HbM+O9NB+q4uoZkCtPLJcxL30nTFIJpSA3gepHLsk1CGcu7rMmlsVULY9z?=
 =?us-ascii?Q?wyaohiHTNuGz0DrAq4Sr+Pe7gYPi6RRDgqkEOxiSF6j8W1CsR3noLiDj3AgS?=
 =?us-ascii?Q?co/UFXqeqn9GUPixAhKrbOyJ2J+HduJ+/fLBTLNNeXQbz6elwf/PjakqnsT4?=
 =?us-ascii?Q?8MEg/0IHZPK5oMHhcmT0Im5hNFwkVUpbaRU8HBHEIcbwdFCi/BM6kLr1LSm9?=
 =?us-ascii?Q?4t5afTw0Osj2+6XjUSHUALE83OCrL4Uov4QfUgCRQgoubhhPlxyKJYcoTCci?=
 =?us-ascii?Q?2pjjsVf1jFgYbMPKqyRm8sxxg95buGutPvgdhyYDVh/DJuLgzm0WmGYtV+8k?=
 =?us-ascii?Q?J15S847gG4BUeSw6R2DjtS6+tvyMVOFTw0ml46YLbiWhexfVSIEl8/x3dxSQ?=
 =?us-ascii?Q?4pohOlcVSrNarl1lq8YTQloT4fyga0jH1QmfCY5cGtigGjwxzPfWR9tkrtdE?=
 =?us-ascii?Q?IOJxqfsZ5XDWSRXj5jn59hSQNjFyx2JO5RvlZFvWu541qm9PJF91PN5iC9Eb?=
 =?us-ascii?Q?h07mSPJODhv5sQQWRXFU+TWXkV0sLlb6Cqg3oNQaAFA4WX6/ZCj5pARkgJPR?=
 =?us-ascii?Q?6bVEGYvu+JiEWuErA6KIw+/Logv8Ed3UKoaf6zsEn//Rk7BcGMUv/x5cpZ6Z?=
 =?us-ascii?Q?lKuBU9P67yqbTf/yhGwqqX5QTm7m3eqymPtMFZBy4QoCaVd27pLyYl3zjrWb?=
 =?us-ascii?Q?Rcd9mzPK4bXnMWHD+hn+CY+K0Hdv7Z87kSaXYY367dondCg2/iNEL+VFpzEe?=
 =?us-ascii?Q?0Qgy4JLVNcm/VA7c+UbjTw7QCNX65wWOr5WsiRtuDVK2ACPqIzkzoDLMye23?=
 =?us-ascii?Q?WAf0qHrfg64YWG7oZ/hV+0zdrGlC0E1GNgyvXyUwBa27+7cofRpUiLvcNYuF?=
 =?us-ascii?Q?L8Ex5UYbdWBIYvwG5zdUMBW+B3NXbgiBvadWWIUIQo6aU2S1ny0j4MS6PJJc?=
 =?us-ascii?Q?A0DPKc6PGDcZm86VblV5BsNxXALavmk78wBoGlMZx3Ca4hW5WCf2qh2XoGTH?=
 =?us-ascii?Q?OM0EI6xO1YaeC9bN9gIAP+ypmbcubfnNdFdId6wuD7RLmeg2s04t+zgfZOMr?=
 =?us-ascii?Q?oWFlcOJPJ15XABR8QdXgCIH8arLEHNvvimlyB/MPNlgSmqaU/fEm3GhjSOb+?=
 =?us-ascii?Q?8PKCds3rdMDzNhRFj4ei1XnZzu4ucObac4QdlXeV1slsucinYN+uzzJLMWQ4?=
 =?us-ascii?Q?h5g0iL/UAvsz1j8MyF3hXIYOuyfborhVrxRLqcLlESwPRmmrswzpm0GR8gNZ?=
 =?us-ascii?Q?dxnorO5yqZDh7d1oDuDjiHrfkoXgchESWVDQd230XuB3sy97b/jrPoZHozl4?=
 =?us-ascii?Q?frSaVYlDjhwKvDtXgYHOZsXRrhQi6qBsXaRonP4N0RpPXcj0+ZbMfK0Rg7qg?=
 =?us-ascii?Q?FuS+Ov4Cx/KDUh1AbwB1ysHSQX65GZoDueKyB6kPTDDEfr/Yjn7SlOTiPfnF?=
 =?us-ascii?Q?fQ=3D=3D?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BL0PR11MB3122.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 53d30292-c587-4006-e4be-08dbfb874924
X-MS-Exchange-CrossTenant-originalarrivaltime: 13 Dec 2023 02:57:46.8897 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: i4V5LqVkuBObRdCkjw2OFl3cqe2DDkTWJioFv1n8eQxMM+JP949u4ttIeCiQZ6k3EQSqt9x8DYbbe1DnApCOleFK3WWRfjTQA8cU5azDTLP0K21WwA/GEQ2cSc9xd7/K
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ2PR11MB8451
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1702436271; x=1733972271;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=lyF01W4wLWOQVqKiNK854hsG6T5+5mG1Zdqsiu8C68E=;
 b=fCqaPs1DwRAG9ovregrU83FOfpamhzU788r6wPluQnpKbdrjiZ20hE8e
 FbNzOlHL50yX/YVx5g94ASYkggR1CiYlfhAaQstAksfbBDSHQyzSs2nvc
 bPXLQyTA91jJTDcjufX3i6SbyS2AVNkjzmyLj2COmPAxWaVqZNmGJS3tv
 fyyr9y1SZ7m+nU2y/8+Prv3Yay10aNgGkP5oGA4/n1m3vL5meL5y9Ai+G
 HaTqpGzF19DajHr987NV8UDZDxJvnDp71puPbIOuhgrtfwwCEaVg5FrrN
 kQX3jh/o0UydnA7xfY+QI6OSo6mPw2FA5yo++uVv8pw1J0hnrluBoRGfN
 w==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=fCqaPs1D
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v2 11/15] i40e: field get
 conversion
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
Cc: Julia Lawall <Julia.Lawall@inria.fr>, "Kitszel,
 Przemyslaw" <przemyslaw.kitszel@intel.com>, "Brandeburg,
 Jesse" <jesse.brandeburg@intel.com>, "Loktionov,
 Aleksandr" <aleksandr.loktionov@intel.com>, "Lobakin, 
 Aleksander" <aleksander.lobakin@intel.com>,
 "marcin.szycik@linux.intel.com" <marcin.szycik@linux.intel.com>,
 "horms@kernel.org" <horms@kernel.org>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of Jesse Brandeburg
> Sent: Wednesday, December 6, 2023 6:31 AM
> To: intel-wired-lan@lists.osuosl.org
> Cc: Loktionov, Aleksandr <aleksandr.loktionov@intel.com>; Kitszel, Przemyslaw <przemyslaw.kitszel@intel.com>; Brandeburg, Jesse <jesse.brandeburg@intel.com>; Julia Lawall <Julia.Lawall@inria.fr>; Lobakin, Aleksander <aleksander.lobakin@intel.com>; marcin.szycik@linux.intel.com; horms@kernel.org; netdev@vger.kernel.org
> Subject: [Intel-wired-lan] [PATCH iwl-next v2 11/15] i40e: field get conversion
>
> Refactor the i40e driver to use FIELD_GET() for mask and shift reads,
> which reduces lines of code and adds clarity of intent.
>
> This code was generated by the following coccinelle/spatch script and
> then manually repaired.
>
> While making one of the conversions, an if() check was inverted to
> return early and avoid un-necessary indentation of the remainder of the
> function. In some other cases a stack variable was moved inside the
> block where it was used while doing cleanups/review.
>
> A couple places were changed to use le16_get_bits() instead of FIELD_GET
> with a le16_to_cpu combination.
>
> @get@
> constant shift,mask;
> metavariable type T;
> expression a;
> @@
> -(((T)(a) & mask) >> shift)
> +FIELD_GET(mask, a)
>
> and applied via:
> spatch --sp-file field_prep.cocci --in-place --dir \
>  drivers/net/ethernet/intel/
>
> Cc: Julia Lawall <Julia.Lawall@inria.fr>
> Reviewed-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
> Reviewed-by: Marcin Szycik <marcin.szycik@linux.intel.com>
> Reviewed-by: Simon Horman <horms@kernel.org>
> Signed-off-by: Jesse Brandeburg <jesse.brandeburg@intel.com>
> ---
> v2: add a couple get_bits
> ---
>  drivers/net/ethernet/intel/i40e/i40e_common.c |  56 +++----
>  drivers/net/ethernet/intel/i40e/i40e_dcb.c    | 158 +++++++-----------
>  drivers/net/ethernet/intel/i40e/i40e_dcb_nl.c |   3 +-
>  drivers/net/ethernet/intel/i40e/i40e_ddp.c    |   4 +-
>  .../net/ethernet/intel/i40e/i40e_ethtool.c    |   7 +-
>  drivers/net/ethernet/intel/i40e/i40e_main.c   |  73 ++++----
>  drivers/net/ethernet/intel/i40e/i40e_nvm.c    |  13 +-
>  drivers/net/ethernet/intel/i40e/i40e_ptp.c    |   4 +-
>  drivers/net/ethernet/intel/i40e/i40e_txrx.c   |  29 ++--
>  .../ethernet/intel/i40e/i40e_virtchnl_pf.c    |  21 ++-
>  drivers/net/ethernet/intel/i40e/i40e_xsk.c    |   3 +-
>  11 files changed, 145 insertions(+), 226 deletions(-)
>

Tested-by: Pucha Himasekhar Reddy <himasekharx.reddy.pucha@intel.com> (A Contingent worker at Intel)

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
