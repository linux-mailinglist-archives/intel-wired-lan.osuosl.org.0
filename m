Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 0C563322BD5
	for <lists+intel-wired-lan@lfdr.de>; Tue, 23 Feb 2021 15:01:29 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id B668B85F51;
	Tue, 23 Feb 2021 14:01:27 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Z5oIruDPLB02; Tue, 23 Feb 2021 14:01:27 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id BD11A85F34;
	Tue, 23 Feb 2021 14:01:26 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id C73761BF84C
 for <intel-wired-lan@lists.osuosl.org>; Tue, 23 Feb 2021 14:01:24 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id B51406060B
 for <intel-wired-lan@lists.osuosl.org>; Tue, 23 Feb 2021 14:01:24 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp3.osuosl.org (amavisd-new);
 dkim=pass (1024-bit key) header.d=intel.onmicrosoft.com
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id IWPUaZp6MYZi for <intel-wired-lan@lists.osuosl.org>;
 Tue, 23 Feb 2021 14:01:22 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 71E4C605F2
 for <intel-wired-lan@lists.osuosl.org>; Tue, 23 Feb 2021 14:01:22 +0000 (UTC)
IronPort-SDR: oIvpZqQHhfZsXq9rZRqGZ57CaUnU+FCFSwuLPJztGhXwMth6oT6GGFCkaPVTkZ00lrpCl0Co27
 xrz0KmjjW8fA==
X-IronPort-AV: E=McAfee;i="6000,8403,9903"; a="164655132"
X-IronPort-AV: E=Sophos;i="5.81,200,1610438400"; d="scan'208";a="164655132"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Feb 2021 06:00:50 -0800
IronPort-SDR: 7w8qVQRvviyQu4OJR4GgzEKA0oAE2yxdJ8QoQdg11wj22RBYh/NNvkjVnEznmnLKyfdljRc/OX
 8tAC2REGZDcQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.81,200,1610438400"; d="scan'208";a="380494623"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by orsmga002.jf.intel.com with ESMTP; 23 Feb 2021 06:00:50 -0800
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2106.2; Tue, 23 Feb 2021 06:00:49 -0800
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2106.2; Tue, 23 Feb 2021 06:00:49 -0800
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2106.2
 via Frontend Transport; Tue, 23 Feb 2021 06:00:49 -0800
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (104.47.56.173)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2106.2; Tue, 23 Feb 2021 06:00:49 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=A8kbg8vCZAhPsdlduEWd6x0IBtREOH1WFCyAoeXA5QJbU1j+mmbl7olt7THlCh+CFziRuXamrpnHQVnCem1qPfeGoflsSmmNlCklx9if0DQw4Q6TrY33adHe0zctiio+h45YFJn+9wzdQdKU3pppS1XvehQdwpNFItRIFXKmnD3VIFV0zM/Dh7+bPnJyryVWbhbdUU+zcIKfOk7fjnmhKel0hVhNEYR80bB5IqjMdOzljZ3nohiRrmbWJTjGC1BT2NnwtPJacjqB0jdDm9EwuVX1RRu9qJrywn9jnwrhkg/4eIOFQMwY666/q6MVgH5PFwCVEp/tsA2LC2/I/AkG7w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=UCXcB+DFBIlgMNY0jahnS/VJVrMtl1yaQ/uEjLGkMHs=;
 b=XJBymf884/MclHEt6j369qKU12lBytNytEh9ATkthCEcgRfD2+k0W+SPHKGj/wHbIZOU3Sd5VnI5t8jTOX13FD/RPz8nTXf0BbwKYnoVuF5xRMCZKxxF0BawV7GqD0nmjJAucSFX1ZpYN9lEC8jkfGAl3A2kfx6XXPguumYIXKW81X8jymawqKbgH1s2fPNQ3XBbGohyrYOQiRdq6TWAGUbPWRBWqWLxkvkcv4L6Zkvv8NnjhISNgIgk2A5BYrlO3bRwIhz14bZOca5qkEo0v/lHLNiJUaffTnDseCqMk7ucpptr6PJWNGhIiK72P1WzVQhaaXMV9/DPxrKAXlIq7A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=UCXcB+DFBIlgMNY0jahnS/VJVrMtl1yaQ/uEjLGkMHs=;
 b=mHPhLrFN6kskAzTrQtpCWT4/06+Epbse3XFH35qIH5aTMyTF2618FlBAIImiiBpNK38H8dM49spI7qKPQYfEDnWnP8GmhtNGBJjVAkFYRUI5y6f2C1V9wFgtwGF0eqRxEIV2KLhJQ6N/Ghr0oZvkbgTFf0j+Fls2v9VZNP1DkUI=
Received: from BN8PR11MB3554.namprd11.prod.outlook.com (2603:10b6:408:88::11)
 by BN8PR11MB3732.namprd11.prod.outlook.com (2603:10b6:408:83::31)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3846.38; Tue, 23 Feb
 2021 14:00:48 +0000
Received: from BN8PR11MB3554.namprd11.prod.outlook.com
 ([fe80::3090:6212:fc64:1fa]) by BN8PR11MB3554.namprd11.prod.outlook.com
 ([fe80::3090:6212:fc64:1fa%3]) with mapi id 15.20.3868.032; Tue, 23 Feb 2021
 14:00:47 +0000
From: "Palczewski, Mateusz" <mateusz.palczewski@intel.com>
To: "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [PATCH net v2] i40e: Fix add tc filter for IPv6
Thread-Index: AQHXCewBwjyjg3IsE0q1qGaUsLhfeaplxJGA
Date: Tue, 23 Feb 2021 14:00:46 +0000
Message-ID: <BN8PR11MB3554BB48A6D2B81BACB56BFD87809@BN8PR11MB3554.namprd11.prod.outlook.com>
References: <20210223135828.19179-1-mateusz.palczewski@intel.com>
In-Reply-To: <20210223135828.19179-1-mateusz.palczewski@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-version: 11.5.1.3
dlp-reaction: no-action
dlp-product: dlpe-windows
authentication-results: lists.osuosl.org; dkim=none (message not signed)
 header.d=none; lists.osuosl.org; dmarc=none action=none header.from=intel.com; 
x-originating-ip: [5.173.185.9]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 22819564-751c-4562-be88-08d8d8036b52
x-ms-traffictypediagnostic: BN8PR11MB3732:
x-microsoft-antispam-prvs: <BN8PR11MB3732ED301EDFB87DCFCD6FEB87809@BN8PR11MB3732.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:8273;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 6yD3dqAzf6Zk6bGkRAm1uiIvJjwUnPPXQbHCOnDRrP4yx/zcNRGv4eyC8TUub0YxXjdfxJXo7pKghyOrafExWUvU969mbEN6PxEi6HEsmSkbAFVv+0liqh49gO6xnXvCzEXlhGc6Tqi2SuqHRaIU5CG1A07bLzHVZxZjhqPKX3LKb/MeKNwU+/n6Bt6KuAd9s1n9UAukKS5jDB2fMIE/8YTyM59nGkr7gSdqnhcSxkensQoCgN/aUP0fKowT1cKNDHlt1kT51rLMnaWwc9BxC6Zuh2wKJGfWKdrvTLriHywVBanEt/qQa5t+sCZW4QP1UWENSxe8vn4CGVcQjlzl+OOBlHzFSIKU+fhgXi7o/CM6BRvUeru/hQ9Nu1MY68hegDb1wqWiwzcZkUuPMIU1pMSiLo+mxdUCPoDChLi0rqiNn0YKxioLwpoGY/GediGrYVkaJPCLIpNgT9UbN6GsAI5dNz0OQJ4q4EFrSKTWusMj9pS1RnWi9Ss62/48QF8EcHFrxfGcoRDmC/sHkhlqLQ==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BN8PR11MB3554.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(376002)(396003)(39860400002)(366004)(136003)(346002)(5660300002)(7696005)(26005)(86362001)(66476007)(66556008)(64756008)(66446008)(76116006)(33656002)(2906002)(52536014)(66946007)(71200400001)(53546011)(55016002)(8936002)(6506007)(83380400001)(478600001)(186003)(6916009)(8676002)(316002)(9686003);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata: =?us-ascii?Q?GNbtmGsj6C+OAcl1z/pClbn+IAoxDBf5BcZ+teohnfkBd6McBN4An/0AyGft?=
 =?us-ascii?Q?rzfymEh4xSgNBJgZq+5gcD98JSWqX3vk70T4IaGnKXNVziIqx/BVYEYEjTgR?=
 =?us-ascii?Q?ORZh7LR5o9tMtfE0tUIms2gv8LEgD82S8B3TokzgOO+/0xdHrXDlQ1cUAj22?=
 =?us-ascii?Q?9CXqUutxVyx4e6qPpURZKqykiYT139xXi6Fn4X46T1ZvvUy3OdwyyXOMDweF?=
 =?us-ascii?Q?EWLw7HHO6mNcYO1rpJTyD0kqi/GhUBuYyGPLQxm0SPXMMKW+3GAVcfUA/+3T?=
 =?us-ascii?Q?C2asnPZ8eZeKBog1FhUx6hxEKpD7ciPIZEc6rPaX/7n96hkSzJSkUtHHzvgA?=
 =?us-ascii?Q?1nzyjfREiCqaMVgJZ+RCZwl0hbxga/vrmUxyYlNqqMpxobk6eF56NoosjqWt?=
 =?us-ascii?Q?E1HrnrL8gWhHI/XDjiB/z3yX6MwZA6ccXBvsMYJI6dO5pXyPvLcLeh69GrhW?=
 =?us-ascii?Q?HUtz1yuvtgsW5vFHqJOr7riHE+NPrdt7iY8zK2nifrn1BgHIFR/Pr68kk5Dw?=
 =?us-ascii?Q?51KJCmtqWPFsvAg9mNnGwbbdQ8NwFus9kFzlq5EEcvoSYVtWACiqPXDH2k7h?=
 =?us-ascii?Q?hv1i7xyxPov1YiEgTKYyJSmD+1Bf+t8qz/8Gs7zusOcVxeQr24QtE8fjHmNR?=
 =?us-ascii?Q?nlJaHql18LnE40wY7nMrjlxLV5gwoyzFYmLFSP5wO3ew1A/utv90nMugd1Xn?=
 =?us-ascii?Q?vtmbsjHjLcqfhz9HbQTlgPKTmyBCBk7K/wpSf0zIeMmuDXrzaqQeY7/vrMgM?=
 =?us-ascii?Q?4XlAJ52mD1L1hodO46gCLAnP9PQXtzi4+My/U9kp6sf2AiTDvx8h3eSqBZrL?=
 =?us-ascii?Q?8v8Ajprja9BSr2NNaCgUSnlPZiJP1ll5yBddWXnAp8GtDlcLvKD5aOJxdcY1?=
 =?us-ascii?Q?vrdkzJI2TfnlzaZ0iSxu9uVmXvs6YeyzUGBLluzz5qSKd5Vm+0qmQrj8aSz7?=
 =?us-ascii?Q?zjzL7sX5zBXQ5OhgsqwAKlkJdzNEnSRAn/8KPpD3pffK/xDlxx2GGjQY8RaV?=
 =?us-ascii?Q?fzS4C+gAaXfw4vncS5v2e0YAeGaFL5rAFAQtzRaJhTYO5AYGK03eoNjhFcMM?=
 =?us-ascii?Q?c6XtqPsM0b4xUjsYvTxcop2AWq9O3dW6Z+TPK7QodqUEpwE0ewUVgtqrjfbC?=
 =?us-ascii?Q?GZ1dEYiX0mTZFKMAXUrqPs525xnWcr5oEQPzxsZ47WmcjpXjhbAYLeHCAHvE?=
 =?us-ascii?Q?Epvb1Un/+KHUug6l8kXWsQCT9l331SwREOqW7WTSRPfc2y4uM499fbyGzKcR?=
 =?us-ascii?Q?tPw4+VuoBqGtpC5GTGs+J3k5jNAlhj+ZjO56wMqBmMOx7NKVtZIWaYnh9Zld?=
 =?us-ascii?Q?Va0=3D?=
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BN8PR11MB3554.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 22819564-751c-4562-be88-08d8d8036b52
X-MS-Exchange-CrossTenant-originalarrivaltime: 23 Feb 2021 14:00:46.9082 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 7a7vzvyw+v2sirZvquhkVxLCz/DdNmPtTvVlfZi8Wc1HlH1CpA2jltQxB1ydHJ8qnM71ohQYYD0kM4Feru2ScGbQmMqATEQp21Gw24tZMkA=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN8PR11MB3732
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [PATCH net v2] i40e: Fix add tc filter for
 IPv6
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

Sent the wrong version of the patch, will resent the v3 version. 

-----Original Message-----
From: Palczewski, Mateusz <mateusz.palczewski@intel.com> 
Sent: wtorek, 23 lutego 2021 14:58
To: intel-wired-lan@lists.osuosl.org
Cc: Palczewski, Mateusz <mateusz.palczewski@intel.com>; Szczurek, GrzegorzX <grzegorzx.szczurek@intel.com>
Subject: [PATCH net v2] i40e: Fix add tc filter for IPv6

Fix insufficient distinction between IPv4 and IPv6 addresses when creating a filter.
IPv4 and IPv6 are kept in the same memory area. If IPv6 is added, then it's caught by IPv4 check, which leads to err -95.

Change-Id: I92412cb419d29bb6ce4decbc7c1cd73df9b4db5d
Title: i40e: Fix add tc filter for IPv6
Change-type: DefectResolution
HSDES-Number: 1806493117
HSDES-Tenant: server_platf_lan.bug
Fixes: 2f4b411a3d67 ("i40e: Enable cloud filters via tc-flower")
Signed-off-by: Grzegorz Szczurek <grzegorzx.szczurek@intel.com>
Signed-off-by: Mateusz Palczewski <mateusz.palczewski@intel.com>
Tested-by: nosbuild <nosbuild@intel.com>
Reviewed-by: Jaroslaw Gawin <jaroslawx.gawin@intel.com>
---
v2: Added space after Fixes tag hash
---
 drivers/net/ethernet/intel/i40e/i40e_main.c | 5 +++--
 1 file changed, 3 insertions(+), 2 deletions(-)

diff --git a/drivers/net/ethernet/intel/i40e/i40e_main.c b/drivers/net/ethernet/intel/i40e/i40e_main.c
index 630258e..bb87164 100644
--- a/drivers/net/ethernet/intel/i40e/i40e_main.c
+++ b/drivers/net/ethernet/intel/i40e/i40e_main.c
@@ -8115,7 +8115,8 @@ int i40e_add_del_cloud_filter_big_buf(struct i40e_vsi *vsi,
 		return -EOPNOTSUPP;
 
 	/* adding filter using src_port/src_ip is not supported at this stage */
-	if (filter->src_port || filter->src_ipv4 ||
+	if (filter->src_port ||
+	    (filter->src_ipv4 && filter->n_proto != ETH_P_IPV6) ||
 	    !ipv6_addr_any(&filter->ip.v6.src_ip6))
 		return -EOPNOTSUPP;
 
@@ -8144,7 +8145,7 @@ int i40e_add_del_cloud_filter_big_buf(struct i40e_vsi *vsi,
 			cpu_to_le16(I40E_AQC_ADD_CLOUD_FILTER_MAC_VLAN_PORT);
 		}
 
-	} else if (filter->dst_ipv4 ||
+	} else if ((filter->dst_ipv4 && filter->n_proto != ETH_P_IPV6) ||
 		   !ipv6_addr_any(&filter->ip.v6.dst_ip6)) {
 		cld_filter.element.flags =
 				cpu_to_le16(I40E_AQC_ADD_CLOUD_FILTER_IP_PORT);
--
2.17.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
