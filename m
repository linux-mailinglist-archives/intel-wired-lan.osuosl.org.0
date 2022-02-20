Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id C93094BCE3D
	for <lists+intel-wired-lan@lfdr.de>; Sun, 20 Feb 2022 12:41:41 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 66DF24059D;
	Sun, 20 Feb 2022 11:41:40 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id NwDXh5QWec0w; Sun, 20 Feb 2022 11:41:39 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 5DC1D40598;
	Sun, 20 Feb 2022 11:41:39 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id DB0131BF2F7
 for <intel-wired-lan@lists.osuosl.org>; Sun, 20 Feb 2022 11:41:34 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id C719F40598
 for <intel-wired-lan@lists.osuosl.org>; Sun, 20 Feb 2022 11:41:34 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Gru6SbeHg9zN for <intel-wired-lan@lists.osuosl.org>;
 Sun, 20 Feb 2022 11:41:33 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 1B03740591
 for <intel-wired-lan@lists.osuosl.org>; Sun, 20 Feb 2022 11:41:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1645357293; x=1676893293;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=L+8kQw45vlFnuwkYerfK39r5iqOHXOCVUrupzryphMc=;
 b=bYEI838DYt5nN8STCYbKlNbMmyxbnjaowd/RueMckm9KIMmlj/AyheM1
 OfqzEKBp1WvLnsutpbguqSN5G8gwH4nQDkVxkBRpqnBLEW4O496+er3qJ
 GaYltyf61ZlEU85tuu/Qgd4koxxohrzDZ/cO4wUXfKFLNDzbeE+CrY8Sa
 cPtM9AdOG7yNXIwrrlsflJ6kubNopr0m5fDHpHh9BrljFA8kqDZYrikjD
 L2NOUIHY636HQ9zQmfGlSQFTop4I8zPH02FQ3AhDtZY28TkjPdhwV8qwF
 ikAF147VPBDVrWYuHd2Nx44/27YM8rYppJmtFwgYRvefbyg1/YsP6aDM2 A==;
X-IronPort-AV: E=McAfee;i="6200,9189,10263"; a="314628218"
X-IronPort-AV: E=Sophos;i="5.88,383,1635231600"; d="scan'208";a="314628218"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Feb 2022 03:41:32 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.88,383,1635231600"; d="scan'208";a="636358495"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by fmsmga002.fm.intel.com with ESMTP; 20 Feb 2022 03:41:31 -0800
Received: from orsmsx607.amr.corp.intel.com (10.22.229.20) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.20; Sun, 20 Feb 2022 03:41:31 -0800
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX607.amr.corp.intel.com (10.22.229.20) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.20; Sun, 20 Feb 2022 03:41:30 -0800
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.20 via Frontend Transport; Sun, 20 Feb 2022 03:41:30 -0800
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (104.47.57.177)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2308.20; Sun, 20 Feb 2022 03:41:30 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=lAhJqzo/VD5rQHZSMbBo4WbqoEUsSUTlpJ63ABSe0ZpKXv9krWG0tK8x+buMf1fe6VJ3Hq9EgyudGe6iHyNZ7ZUgo6vUcBb6aUOEoNvkMk4unAII+SYejVEs6bfOaEVfC9vg8yoshFTU3I1IzVNLb0/JhUy/QaYawBBcxSRnKPFqYOVpcNQzNPzfbr9WO3pxJ1SLBMTng6xpHBizMQGh82O5IQwzl1eBYh2CrCpLe84EFA5yPgghVddaEHYMXj73hzisDji9JBHU05pHW453L2c5fGewVcLv7NYeWz7phR4UgzH/IftR6XSuOBn1vY+PlP7yZpBJKej+ets5YYnDcw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=spCRrkp0iZxlQfnRq/TLBIkPg0AgW67z0+kVWiWPOy8=;
 b=KTu3qkDvAZK6cQsWoLyhAo98Nw2bvVm/LV7DoO4TJ5F8S5pO16whLPV/vFAQV9JT3lHI5IDW1ci4r94pWVb+lfIe64QaUiT425kTLPGWaMBHsN51B/J7tfzujfCBQagyrF2HP1xqKPOy6ZJLohHU0NG3QEpjGQuYXuxNUc3o1zX/rg+zpTga0WiWlhSWJEoK9f05JclUMX+AMM32ADHlOXOEsSfBWZDKgHFakFeoiSnRkrfYKdUX+QQRSGMMdroxiVIRkN7cwTE8WAL9UHlZ0IB7OeNAt21Eox0Mjy6kfF4mgBxNk+UfhJKbxML+co3fxzdhzI9mcTbejWiFLB2olw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CY4PR11MB1797.namprd11.prod.outlook.com (2603:10b6:903:126::19)
 by MWHPR11MB1264.namprd11.prod.outlook.com (2603:10b6:300:27::13)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4995.16; Sun, 20 Feb
 2022 11:41:27 +0000
Received: from CY4PR11MB1797.namprd11.prod.outlook.com
 ([fe80::c8b4:a66e:3224:1515]) by CY4PR11MB1797.namprd11.prod.outlook.com
 ([fe80::c8b4:a66e:3224:1515%12]) with mapi id 15.20.4995.026; Sun, 20 Feb
 2022 11:41:27 +0000
From: "Bhandare, KiranX" <kiranx.bhandare@intel.com>
To: "Fijalkowski, Maciej" <maciej.fijalkowski@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH v2 intel-net] ice: avoid XDP checks in
 ice_clean_tx_irq()
Thread-Index: AQHYGPf++d0RHT8M3kKVpdYCtUqpiqyca2ng
Date: Sun, 20 Feb 2022 11:41:26 +0000
Message-ID: <CY4PR11MB179787D32441208BE9D4B5D9F1399@CY4PR11MB1797.namprd11.prod.outlook.com>
References: <20220203121651.18937-1-maciej.fijalkowski@intel.com>
In-Reply-To: <20220203121651.18937-1-maciej.fijalkowski@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-version: 11.6.200.16
dlp-product: dlpe-windows
dlp-reaction: no-action
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 9f1d51cd-4abf-4362-db11-08d9f465ede9
x-ms-traffictypediagnostic: MWHPR11MB1264:EE_
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-microsoft-antispam-prvs: <MWHPR11MB1264CFBD4630E093DDCFCAEAF1399@MWHPR11MB1264.namprd11.prod.outlook.com>
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: llYpTiyCLmpZzs9q28hui8kFclxSRaehdHx4y6IrhJtRngFTrC+EuM+jbT4VLil2ne2NEb1aHRNKZP82MTpAkYAUEqZ5OOSMFG9UfEs111dvYqiGpTpMiqLHFp5wetMyToqJLTGTJg4dT2WlwP4qawKZEHoC3hwIxhHiItU5PKgfK1zfyZDlmQHs0lZA5SkU9TPMKtjo3kiEFHFgkChUoCbtpsgRk0AuNGUSjkazBnJq+a9pv1hDn8RhyVtfAFE9dM5JprtSL9g0z+Q6pOHbijqQBkpj7vWDcjvO6Z5jMJsW0ZPxB7uks8VR9JNdbNdEQyIUcTvQV15J811KX7XESELhI8p6hg8rgFfk8XkVEnohn8AoXNFJzYf/7o76JzpHWQO3gMSXak+941qnmVfO/w6krER2p9kQ4wZieqWfB9J+ojixyzvXorCt/8Ye5/A3fpoUJeNtUtf3azM6qRwAdTqTeYXgpkwPY8VJU7lngORI5lBcq/hUYtUxYlXN4tdIps4pHH7p25HcEt09A0QDxwtJ3LrXx5iOaPUvQ2jKNbLo6V6G8Wo4lJpjZE22XAk7H6mTaznFIh14hahNXkjyohLhSB7Yy8iPQJpsxulV9Oc/7lpaT7/GnBkmMDehqHmst1V+//kMGOoN19oR4GaOGKxsUrnOLjwXwrRkTdQIg2IrxKqmkBwh9uPMWg4Mnbw1R0zHTMuDE4c4NWJsCVtJGA==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CY4PR11MB1797.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230001)(366004)(71200400001)(33656002)(82960400001)(38100700002)(6506007)(7696005)(9686003)(53546011)(107886003)(186003)(26005)(83380400001)(76116006)(110136005)(55016003)(122000001)(508600001)(8936002)(38070700005)(54906003)(86362001)(2906002)(316002)(52536014)(8676002)(4326008)(64756008)(66446008)(66476007)(66946007)(66556008)(5660300002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?P7cvV2y/uFrIavvd7L5esIvBsvbgu/TYsdftqVHCwHSmZjoP1pgDfeUaoRpD?=
 =?us-ascii?Q?JLIkXkpt+jhe2+2dbwc4CZejKw9l/rhC2eIasvA1AjFRPB+2aC1Od1qDH9Gb?=
 =?us-ascii?Q?Yjdjc00g4d5kl3UJbj5BvO+yp6+CUJw9e8cqVCuEISZhvN9lpdnZ3aoO5jrU?=
 =?us-ascii?Q?ILunIFGL5IunUYiRjRDPy57aHNGt9zWxUtsaJpQGE5lN7Tg4Dvg11qeBPsBp?=
 =?us-ascii?Q?n7OlZiRDxEwElkKEQD8dSZxSWvxH3Bkv7wxK96fqaPubPWT4Q0A11Qkw7WyZ?=
 =?us-ascii?Q?v3Yed6krhW2r2jNxdorMnvIUm6RePiPpMP9Kb/uXGxpkh6gOYvss+edIJccr?=
 =?us-ascii?Q?Mp3JtMdYCoh6A4dejUzrCyg4wGg5VemlJDfw4KyNTKj4YDx8bV9C0nYmeC7U?=
 =?us-ascii?Q?I8JVbtLNKYPj+4+geqhOFaZdqVjkIvUNzwWMTAMbcRq4rasnQdfBjjvWC2mv?=
 =?us-ascii?Q?QTSkNA3dJRxriD2VDuadJRWWyin42lH3RU93D5gVoiTdaroUjyCXAc5CaYyA?=
 =?us-ascii?Q?sd1M/6qsJGv6/gZpPp9WIGe7QEfvPPlcgd6CO9E3OhXttqs7oVl85Y3YZ3mL?=
 =?us-ascii?Q?BSVDqGF6KSE6HvCG5URSVlbtiQTNjx6LqWNTei1MPtQ1aqZWKG1F6TITBu5c?=
 =?us-ascii?Q?6vzypD4zAymL7hjn23s2ld3KvLGlqqLI2jcMTok4U9yVvYdwpN9t2ryqgnuZ?=
 =?us-ascii?Q?V2vA01SbNnKk5tWWg2vQrSK/3J/OFZQpPF3RdZhrN+BNKgZ3AASXOrsbWgN+?=
 =?us-ascii?Q?J3hW2HR0TxSzz1l00PFzw4LdF6KOPtpq+YxEWkfuNnYghTD0Ec8nJHeleuFm?=
 =?us-ascii?Q?bCelaaO4kQmAi0sTaH8sL3JkPOM1Jjc9Fz3ncoUQsh7V8UuShZEHpsLGWnPv?=
 =?us-ascii?Q?TvEEVZDH/v4e4ZcEghP+UqcWDOzVtpiLlT2BE1IMvj+tvLSildwPDRPwdC0j?=
 =?us-ascii?Q?CvX7UFZH+3HMNtqNw3E+yvWLCX0aUgGUpINIpUHBFqhhXDOZkV7iFU+EWF8q?=
 =?us-ascii?Q?6M5baYRhazcLsnz7lob+3FiR457keE5EXeBY0SSXoIUOGlJzDbL8cRtnJMtO?=
 =?us-ascii?Q?/fuZhpv0u/pOnjqmW1Jgq3Pwkxzl0gMPaB6h60wf/tSOxxVneaRQH734hwo8?=
 =?us-ascii?Q?02h4gqHO3BdX/XW2WQqV0NWw9cZ7xGGI/gRMoA4gu0UkFr9qRZfV59qlCLEf?=
 =?us-ascii?Q?QIKHZ/7zUmlcr8EEaQNrUD7fcCYjobYF91FuuT279skixnHAcKfeJ4ERwPLm?=
 =?us-ascii?Q?ne3GJMnzAbXo0kWuuZYnUgjo7WBfCD1bUyb0eHSOKPKK5k5shM2CTxVqirHI?=
 =?us-ascii?Q?glRo5quXdaJGZoDchsLKCXo8a6oWs/gXJ/pEp8bT9FGPfIEWsEbWP9dDcZ2o?=
 =?us-ascii?Q?/t6ghb+wQXA+HodEbYIzulMDNNt1UY8ra1h/HL1PDgMG+XAdPEfRZNbE0c8X?=
 =?us-ascii?Q?8f33kruMwSTYRpLuZCcCz8buCMTvFtlqwBVuXm982bd6zNxpfwdxyQlSJptW?=
 =?us-ascii?Q?KHSx0UkmfDTT0qczPGQaRqnMRjN9Uti5RTnvalb9Clg88jXEZAHnBQJlSRx8?=
 =?us-ascii?Q?2mgRzMml3LzRrkF6W9I0G5eAlVS58ADAbgIKFgvkqsd646OtZOkjAE8Yg032?=
 =?us-ascii?Q?hrPTQG0fgpdohOydP1at+8iWPWj+xflVUdMBhBuUFdBcjvPX0Y21f8EKpVs/?=
 =?us-ascii?Q?JC0O5g=3D=3D?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CY4PR11MB1797.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 9f1d51cd-4abf-4362-db11-08d9f465ede9
X-MS-Exchange-CrossTenant-originalarrivaltime: 20 Feb 2022 11:41:26.6599 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: gkjBOIkvrLsLF1Jvi5BNnRE7XUFqLIxoXaelDn/i6VRGu/kGiCDeldlHkd9iP76FYZvENOexO8rC19turEdmIJS4MYQ8UmQf+vKEsE+xeQQ=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MWHPR11MB1264
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [PATCH v2 intel-net] ice: avoid XDP checks in
 ice_clean_tx_irq()
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
 "bpf@vger.kernel.org" <bpf@vger.kernel.org>,
 "davem@davemloft.net" <davem@davemloft.net>, "Karlsson,
 Magnus" <magnus.karlsson@intel.com>, "kuba@kernel.org" <kuba@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>


> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of
> Maciej Fijalkowski
> Sent: Thursday, February 3, 2022 5:47 PM
> To: intel-wired-lan@lists.osuosl.org
> Cc: netdev@vger.kernel.org; kuba@kernel.org; bpf@vger.kernel.org;
> davem@davemloft.net; Karlsson, Magnus <magnus.karlsson@intel.com>
> Subject: [Intel-wired-lan] [PATCH v2 intel-net] ice: avoid XDP checks in
> ice_clean_tx_irq()
> 
> Commit 9610bd988df9 ("ice: optimize XDP_TX workloads") introduced Tx IRQ
> cleaning routine dedicated for XDP rings. Currently it is impossible to call
> ice_clean_tx_irq() against XDP ring, so it is safe to drop
> ice_ring_is_xdp() calls in there.
> 
> Fixes: 1c96c16858ba ("ice: update to newer kernel API")
> Fixes: cc14db11c8a4 ("ice: use prefetch methods")
> Reviewed-by: Alexander Lobakin <alexandr.lobakin@intel.com>
> Signed-off-by: Maciej Fijalkowski <maciej.fijalkowski@intel.com>
> ---
> 
> v2: fix commit msg and collect ack (Alex)
> 
>  drivers/net/ethernet/intel/ice/ice_txrx.c | 7 +------
>  1 file changed, 1 insertion(+), 6 deletions(-)
> 

Tested-by: Kiran Bhandare <kiranx.bhandare@intel.com>  A Contingent Worker at Intel
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
