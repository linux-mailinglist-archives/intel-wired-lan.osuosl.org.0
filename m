Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id B3027808230
	for <lists+intel-wired-lan@lfdr.de>; Thu,  7 Dec 2023 08:55:31 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 3284342069;
	Thu,  7 Dec 2023 07:55:30 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 3284342069
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1701935730;
	bh=tswo4cddfaq1yjwyaTUfxUsRt/mJqWO2YRv7f6fk0/c=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=R6gZ+h8oC40khUYdTYoVsSjsgFpIo5xhLoIGhFrAbGWUNvKYzdGE0qyLD0qDQaXGX
	 5DVwzO8xiAmP9nhS+8nWm0acBurg4GBQWBk7+MO/NAArgITy2r8NWPyBNdaAZLjhDW
	 HYQakHMTay+DmpKaskwsieVVCMljb5LDM10imIL1xMPTzTKeiYiL/oeFxP+IdKGPS5
	 MEfRC2PD3cGAEYfsuAWhQaCdZAj4NE9/N45/DfEYWcyYRCVrAxx+34HcGvrH6RnlI5
	 f1FnBRHikeNEbKvIHYY7hFdl2vR1SZJFk/54cFi60WoaN/zZrthLUYEGqhtFgZ2TIL
	 05aCtFXa/Zr+Q==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 7goAtahe5dS3; Thu,  7 Dec 2023 07:55:29 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id F1DE742037;
	Thu,  7 Dec 2023 07:55:28 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org F1DE742037
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id C326D1BF2E4
 for <intel-wired-lan@lists.osuosl.org>; Thu,  7 Dec 2023 07:55:23 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 9386C80C2B
 for <intel-wired-lan@lists.osuosl.org>; Thu,  7 Dec 2023 07:55:23 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 9386C80C2B
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id m6s_cRbllpQq for <intel-wired-lan@lists.osuosl.org>;
 Thu,  7 Dec 2023 07:55:22 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.65])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 8564780BEB
 for <intel-wired-lan@lists.osuosl.org>; Thu,  7 Dec 2023 07:55:22 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 8564780BEB
X-IronPort-AV: E=McAfee;i="6600,9927,10916"; a="398075674"
X-IronPort-AV: E=Sophos;i="6.04,256,1695711600"; d="scan'208";a="398075674"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Dec 2023 23:55:20 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.04,256,1695711600"; d="scan'208";a="13019623"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by orviesa002.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 06 Dec 2023 23:55:19 -0800
Received: from fmsmsx603.amr.corp.intel.com (10.18.126.83) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Wed, 6 Dec 2023 23:55:19 -0800
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Wed, 6 Dec 2023 23:55:19 -0800
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (104.47.56.168)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Wed, 6 Dec 2023 23:55:19 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=c4v3xCP9YUpIMCfojxiHWs2grZg0+Apro9oSrp7WfaNzIAO/vLEB9LFvTcmP/EAh2WTnZoKl0EFdUuUTNPWOC1rqfuMriQaqFep8X3vRBfSCh5gS/1Ql2QsFNl4AD0ViuMk6MNLzLIcN/lcOAs8l3XUV41WbdiVJfak+k5Ls58ra6aULNEVloiWtd/Nt4HTGW25hNnmm6I8IkTW++a4B4L6CVFjK7eIapiZkOSfsrjQuvwPVshbNh1aNZJ34oVb2zv+J9HKDx02BygZOJL8/hVmUDZDw4k12HszudkDJ3I4UZy3HklxGfdJ2bWz0I3V2G4b+6TQFafyJd33HdHVDBg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=BPBVSudZ3HFlgSCBPEE2ftKIy/pCctenRBWulqduimc=;
 b=QsadEsNOsWCU+8vG1SWY80l1fAspgsimEIpwswvc5tRfzwvuzkbHYvKp0fsydiAjGqAUlXVyLqN5sZx1llEK8TfzjJ8gIGV+FQ0KQzwVZ56KqH2IEsXo37b8NOHpCzW4Dq4cOo/+ZTzP0El7ynytfhYMJxNF2CT8/pM/sE20lU5m1b8EUL0wGGBCbDyElAE4kbboOtUWht+HLohxL5COtjrgLdOGaeP3gIuGEqI804BsOxGLLVZytp6VZrq+jCYYUHYY9D/UIeL+exY7w8rPJjHHCm8Lu4DXRUgnLh6hHwRp+Nu7enzEyJcjETxEsMu83YcC+0kGIe/d1rSk4SP9xQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from BN9PR11MB5276.namprd11.prod.outlook.com (2603:10b6:408:135::18)
 by SN7PR11MB8261.namprd11.prod.outlook.com (2603:10b6:806:26f::5)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7046.34; Thu, 7 Dec
 2023 07:55:17 +0000
Received: from BN9PR11MB5276.namprd11.prod.outlook.com
 ([fe80::e7a4:a757:2f2e:f96a]) by BN9PR11MB5276.namprd11.prod.outlook.com
 ([fe80::e7a4:a757:2f2e:f96a%3]) with mapi id 15.20.7068.025; Thu, 7 Dec 2023
 07:55:17 +0000
From: "Tian, Kevin" <kevin.tian@intel.com>
To: "Cao, Yahui" <yahui.cao@intel.com>, "intel-wired-lan@lists.osuosl.org"
 <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [PATCH iwl-next v4 08/12] ice: Save and load RX Queue head
Thread-Index: AQHaHCV/OCOKlQEK7EeTKXfnKkai+7CdigMg
Date: Thu, 7 Dec 2023 07:55:17 +0000
Message-ID: <BN9PR11MB5276DFED75FE8F9372B7A3CE8C8BA@BN9PR11MB5276.namprd11.prod.outlook.com>
References: <20231121025111.257597-1-yahui.cao@intel.com>
 <20231121025111.257597-9-yahui.cao@intel.com>
In-Reply-To: <20231121025111.257597-9-yahui.cao@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: BN9PR11MB5276:EE_|SN7PR11MB8261:EE_
x-ms-office365-filtering-correlation-id: 64ce6a8f-c666-4da4-8f73-08dbf6f9da51
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: uVTja2kDummJ8nAqgIU7pEDajzm4IszhFcrIabH4vJi57+Njqt4hN3n60q/Qxh+1BGjvXuDKirGHvpvVmtq8y0RZACav3A8oCUtR8MEFDy6PaUOkZQ0qne5rGj105CSkS1Cd1usTeDHpIiqMKkntPBynP/Apr41YBxSMEv6ux1i3CHafWaIJyDNIXHhqdPaejxgFdPI40CdGPajf5P70g1v3S89uTvZZpUz4rHXhE/bJXOpXZ1nWneimNn7UYDLmkTqlgi1pP2hrJru0lAbp05uNYyuL34zv8rsCUDlUN7zcVHlYCrwi+xOd3iNNkWA1XwV8YeF0ncPqXlWPi9D9H236iZuABHok+YLlnwOAFv37SFNv/qifdKd9ncj+V8L/7tvULBxnuajcP9ieqr7DLHNcWfr6j5gczyzNSJNpjpQUaOJFJGYQX7eBho6BgFnOoD5MvmFuP+J08T9FLRQ8zK8u6IZCifQsEKOOSRSZYooxF/EYz5DBOMdkaZn+wFwx1EZO2BxcF/6v/TlNaDVzpKcO61gPZVkvjjNupkTTW9e+wDPxlrHocrZfSnTOXyyanAzKjRr7OkBAsupvIiNntOxD4eIRw1urFUXQDYZVjNY=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BN9PR11MB5276.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(39860400002)(376002)(346002)(396003)(136003)(366004)(230922051799003)(186009)(64100799003)(1800799012)(451199024)(7416002)(33656002)(2906002)(64756008)(316002)(110136005)(66556008)(54906003)(66476007)(66446008)(76116006)(66946007)(38070700009)(4326008)(8676002)(86362001)(55016003)(52536014)(8936002)(41300700001)(5660300002)(122000001)(38100700002)(82960400001)(83380400001)(478600001)(26005)(71200400001)(7696005)(9686003)(6506007);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?qD4UPa7avKciTl2bhhKALy1cye1LlhImwQGtx6E2vptgqHKY+KQuWGRvpROY?=
 =?us-ascii?Q?rn5kUnE9zRMjB+lINV9LYEAs3SQ0tI5G+OBYOBc8xBqE4mrRVUftOWMGNxfw?=
 =?us-ascii?Q?2nTp1hEQabS2ZZtGE0LfK6KmnAoiIaI71lhHKzXl8RTzcMeDK/PBiDbqVgao?=
 =?us-ascii?Q?2KiuIsiy2VmcJIzOWc66Y7ktho/zfAx+VSfAtXObs5QEaUFD2IorF2RZc+dn?=
 =?us-ascii?Q?9mAsjQLxdBQEPsH/5BTkya7n7J3MfXNQIDftlDratvuFnLmDHTEdJV4tNxGy?=
 =?us-ascii?Q?z7NiWIN0yoDjoa7gCysWinOEEy7KeqE5ERzthvddRmVCpgBbv4f95UAoHwtJ?=
 =?us-ascii?Q?jPR/K2wb4VpAwy4PCE8w51rLht7uAtWbtajDEaxeBRP/Yv4Gcw93dW4X0MdA?=
 =?us-ascii?Q?S9rGI/EXEYmVmnTae5Da1Xm56HxJfMcmG3xqHn3+VMq0PaNzfg5YUZSJou5P?=
 =?us-ascii?Q?/9UyDo+quggjDGUwMephycsT9XGdOTZ1s+BZYzcMpccY3bfo7or4iIVWyQHq?=
 =?us-ascii?Q?5Bf4V0qcXqz14PZXgc/z6wVKGyjMj9I/2dNnWINx9pKi22S2zhe78OhMBOPZ?=
 =?us-ascii?Q?w6wVWjoQ3TUicIl9dXNiFUeGWKfY7MLXEmlwJcagdijKudpKCYiVrD8BdBlT?=
 =?us-ascii?Q?BhPDm+ECtfo2wX8LDNO7XB5iiMoFEP00XYmW5CMiv0HhDCbPsbEYoFwsz4Qh?=
 =?us-ascii?Q?XTHw6B21EBKp3kPOPLHPN4pY3wv7YnHRUKmVpIdoWMwloyu4SSaC7QMoB6ar?=
 =?us-ascii?Q?KvU5u9Glm6+Vi+04dsW2wzwIUylcG2XAZJ27AJWSVSiSmu03/4em1362EwKJ?=
 =?us-ascii?Q?IY4iyUjwF54tKoZK2tm+gfOU23paAvByKvv58x2dbtSlNwkug0Sj5ZcF56Ql?=
 =?us-ascii?Q?zmvYooLEB0wYLqsqFkjxO5Yxwn6pRiMrFULh46PGtLZsMVGnIEcFhMrptb3m?=
 =?us-ascii?Q?TUlRAFBbejUp3rXt3pox39MCLjdVIo27AjzfJZl1QKVQ9D63oDts5C/FV5dM?=
 =?us-ascii?Q?Ni8M5YKj2IDYIyEJGowWllQWQzwxYOI/vN5r67zJguQFVaVXNMDZUWb2TJI6?=
 =?us-ascii?Q?e5zvXUJzpvqJpv2whH8Qf6e0CNrW3vnC+VS+EOawzi12/JYru2nK7GzHHp2T?=
 =?us-ascii?Q?Z7hxn/9IucDkM4ucgqiWpYPUVVgnVfCwA1erVl7wIB69daFh+WPwyDS+GjWM?=
 =?us-ascii?Q?F70/PeEh8Vg8g4gEbnBR7VqOtjChXrZNt+GfutAaZrpEXvRoTwkFpMCJ+jfg?=
 =?us-ascii?Q?5SM7GT+FEMEubGrjeKDPVO1NCX3JBaqMz2qsyloUthQbXKHS0DCEOyAsExoW?=
 =?us-ascii?Q?sFc231pHQkyHUHBB8m+W583WVaQSnIID11Ana/LRxzV07ml7w7zfHWkpw9ju?=
 =?us-ascii?Q?sFkK9DmMbt47lzvV6wW8wfebHaOsFw0fM10+co5XTrd5rvK6LjOf+m/1wjKU?=
 =?us-ascii?Q?rFasM39M6xm/64UcsZBNw/JHDGVeQ0nSHA/QNDb9P2DqNACDiOZwj514jiFw?=
 =?us-ascii?Q?KJJsS2H2BK5uKWQdqpFkM7G89n0sAQx2BpaL9zHol8wbKYQ7GF28cVn4v3oQ?=
 =?us-ascii?Q?J6+j8lQqNce8h1srNm2R57QQvtOGlpdazDTv7Luc?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BN9PR11MB5276.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 64ce6a8f-c666-4da4-8f73-08dbf6f9da51
X-MS-Exchange-CrossTenant-originalarrivaltime: 07 Dec 2023 07:55:17.2969 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: s3ZLjWqPl+3qhxLGc/uMNz7YumvmEQZKrBoR5yCy93XD4MZm1O8VtTD9pKh0OOzUNpK8BX5+y60kzqz6JJxENg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN7PR11MB8261
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1701935722; x=1733471722;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=JHXr0kyHX3nkMaGBOMvRA7B/B6Csr66MON3MkLJViXw=;
 b=fbl5cPeOhP92K+5ELrFuVtXjvCih2F3FbU+ytPklYoECX3xJmK671YxU
 1chKVn3iL5ABGvX0TGA61ZL2Ej/9RNPZi1N753DlWV16c2dQd7sPv+dGx
 hQNf2rsbat6v9djbXnAY/y1IamMrOcqEf9wazKx1BjkQFaFzsQ1oucyuy
 xT7A9/akZkLBniExBbZeT38wFSpcJ794sbZ7ddSAz3J/CwoawBx38FRyJ
 n0onlz5TvN17T3oBehgwn4FC4AZkF3jQZEgaHhV0nKkt0rVBKpqs8kzpW
 AXQ3Pz8rEkaw47YcpZ2kRI1RdRMYIidZGH0VXbse9XgikdNwXUhbvR/4N
 Q==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=fbl5cPeO
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v4 08/12] ice: Save and load
 RX Queue head
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
Cc: "yishaih@nvidia.com" <yishaih@nvidia.com>,
 "brett.creeley@amd.com" <brett.creeley@amd.com>,
 "kvm@vger.kernel.org" <kvm@vger.kernel.org>, "Samudrala,
 Sridhar" <sridhar.samudrala@intel.com>,
 "edumazet@google.com" <edumazet@google.com>,
 "shameerali.kolothum.thodi@huawei.com" <shameerali.kolothum.thodi@huawei.com>,
 "alex.williamson@redhat.com" <alex.williamson@redhat.com>, "Chittim, 
 Madhu" <madhu.chittim@intel.com>, "jgg@nvidia.com" <jgg@nvidia.com>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 "kuba@kernel.org" <kuba@kernel.org>, "pabeni@redhat.com" <pabeni@redhat.com>,
 "davem@davemloft.net" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

> From: Cao, Yahui <yahui.cao@intel.com>
> Sent: Tuesday, November 21, 2023 10:51 AM
>
> +
> +		/* Once RX Queue is enabled, network traffic may come in at
> any
> +		 * time. As a result, RX Queue head needs to be loaded
> before
> +		 * RX Queue is enabled.
> +		 * For simplicity and integration, overwrite RX head just after
> +		 * RX ring context is configured.
> +		 */
> +		if (msg_slot->opcode == VIRTCHNL_OP_CONFIG_VSI_QUEUES)
> {
> +			ret = ice_migration_load_rx_head(vf, devstate);
> +			if (ret) {
> +				dev_err(dev, "VF %d failed to load rx head\n",
> +					vf->vf_id);
> +				goto out_clear_replay;
> +			}
> +		}
> +

Don't we have the same problem here as for TX head restore that the
vfio migration protocol doesn't carry a way to tell whether the IOAS
associated with the device has been restored then allowing RX DMA
at this point might cause device error?

@Jason, is it a common gap applying to all devices which include a
receiving path from link? How is it handled in mlx migration
driver? 

I may overlook an important aspect here but if not I wonder whether
the migration driver should keep DMA disabled (at least for RX) even
when the device moves to RUNNING and then introduce an explicit
enable-DMA state which VMM can request after it restores the
relevant IOAS/HWPT...
with the device.

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
