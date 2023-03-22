Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4B9166C547F
	for <lists+intel-wired-lan@lfdr.de>; Wed, 22 Mar 2023 20:04:29 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 5C98E41C63;
	Wed, 22 Mar 2023 19:04:27 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 5C98E41C63
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1679511867;
	bh=M9KuL53D+FSikBBGgtWp9ql5WIZ+OBTE2by7i0EFDcU=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=ZxCg3k7Ur3Hb0bm+Fnfn9OM65o1HtnSIaRij2JBuADMKefk2hTMoqr9GIkaNrdMtb
	 ZojrM4jgQXx0hfGlBsdYOB4g7ao/q88ZIDkGi/gn4ugbcUeGOQJqTTc1K/beMdLQMW
	 auTxK3BHebC9HRSj76aa58y3bcWj+DAyPi0F9gMW5eMR12iIetN0p0yZNiqFBkzPKj
	 q0BTjICbh4sk4dBJx3nq4QB14PipxJqa2CkFRSLT7FU/89QtP81v2LKNBmDoRV2AZr
	 VXxJijNTbQjq7TY9QN21PSgxALdExstXAJ22loC5XdodqpZ+wphgOkts4A9i2NZ7QB
	 JM2j/JARPq20w==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id sHz5e2eNbNIz; Wed, 22 Mar 2023 19:04:26 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 2EF4141596;
	Wed, 22 Mar 2023 19:04:26 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 2EF4141596
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 839C81BF3CD
 for <intel-wired-lan@lists.osuosl.org>; Wed, 22 Mar 2023 19:04:21 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 53C53614A2
 for <intel-wired-lan@lists.osuosl.org>; Wed, 22 Mar 2023 19:04:21 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 53C53614A2
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id CQGr44YydEp4 for <intel-wired-lan@lists.osuosl.org>;
 Wed, 22 Mar 2023 19:04:20 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 30CAC6148B
Received: from mga06.intel.com (mga06b.intel.com [134.134.136.31])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 30CAC6148B
 for <intel-wired-lan@lists.osuosl.org>; Wed, 22 Mar 2023 19:04:19 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10657"; a="401878733"
X-IronPort-AV: E=Sophos;i="5.98,282,1673942400"; d="scan'208";a="401878733"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Mar 2023 12:04:18 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10657"; a="682021636"
X-IronPort-AV: E=Sophos;i="5.98,282,1673942400"; d="scan'208";a="682021636"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by orsmga002.jf.intel.com with ESMTP; 22 Mar 2023 12:04:18 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.21; Wed, 22 Mar 2023 12:04:18 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.21 via Frontend Transport; Wed, 22 Mar 2023 12:04:18 -0700
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.109)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.21; Wed, 22 Mar 2023 12:03:50 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=f8k2hkd4ehNmIwNmQ1AWM2MqWVsxQUN+vP0mpEEqRHrq6go0mAFBoLBkzg5aOrx+bsYYQeO0KoSVcgbsko7WAoXILmCFQ3xvWP4wcx9igLEx3+4typr14epfVxs56o/p3dcQ/3iQFFiRh283ZQzF/sBvGLUvJzh46YXnMQKtSsP70UOmvzzP1+51vibP9kg3+jzgtwjffv6c+nNBhvAYtVsiNsqhB81hbBwDokrzrKVi6DCtv8C6Y+2Zeu0mhvMUDRjRE3/a4bxD9b8AGShIcOvSlwoAZJeGEm25d5RimhEcIdLAJSGIJKupqwtH/NiUDASMTwbdKucjvgcTy8pp7A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=UPYv3eaJBbzro6RdXhouQy7IvwhBGvuGzvY/OeLpaKo=;
 b=HejeRBcWomfgOSsEW6bDYl8K3uk0Xw/PIL/hHA5Zavg3KKyLpp0B6FA9mxPiEskfvmqz93iQ9g7ODXxPkIUDJXW4b4pEWkQuWyFKueR0QFpNH9rtYT/zhDlDT7tuWos3Wg+ccS31ERfI+4z2oPU8are08YXWY8IPT3sZj+nuczxcxe0HdofPUq0A+rRS+5TyQnD1kX6MnYiUQoesGy83lla3NkzPiiPHfiLXU+7+BKkrK7pzCA6Iktm6WtWfRgx4ekqmSaMRPZ0ONFZQnYeEukdCBC7j9mD5+OCP9e1bYWxYm5qY7GVTky70LX5YxoB4R27MM/IXfaW127UWY+g9sw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from PH0PR11MB5095.namprd11.prod.outlook.com (2603:10b6:510:3b::14)
 by DM4PR11MB6406.namprd11.prod.outlook.com (2603:10b6:8:8b::14) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6178.37; Wed, 22 Mar
 2023 19:03:48 +0000
Received: from PH0PR11MB5095.namprd11.prod.outlook.com
 ([fe80::9612:ae25:42a4:cfd6]) by PH0PR11MB5095.namprd11.prod.outlook.com
 ([fe80::9612:ae25:42a4:cfd6%9]) with mapi id 15.20.6178.037; Wed, 22 Mar 2023
 19:03:48 +0000
From: "Keller, Jacob E" <jacob.e.keller@intel.com>
To: "Raczynski, Piotr" <piotr.raczynski@intel.com>
Thread-Topic: [PATCH net-next v2 0/8] ice: support dynamic interrupt allocation
Thread-Index: AQHZXNruQY4DXRkaF0+87uupYh0K868GmciAgACIHYCAAAZaQA==
Date: Wed, 22 Mar 2023 19:03:48 +0000
Message-ID: <PH0PR11MB5095013B20B313877F36B35CD6869@PH0PR11MB5095.namprd11.prod.outlook.com>
References: <20230322162530.3317238-1-piotr.raczynski@intel.com>
 <ec5c3cf4-49b6-32fc-d7cb-06410d6497da@intel.com> <ZBtLqdU8aCKxaHDr@nimitz>
In-Reply-To: <ZBtLqdU8aCKxaHDr@nimitz>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: PH0PR11MB5095:EE_|DM4PR11MB6406:EE_
x-ms-office365-filtering-correlation-id: 7b7edf1a-bf4b-4eb3-703f-08db2b082b17
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 0t6LkzD27zbUcbWMOi5rjeoSv+EF5iP3w47ZmTZH+oMJAhLOwwttZ7lL6BUaJKzM7Q1rsRvyiB1ki9aNglMgsDiWnRrq+8Dlo9KivQhLewDq9OFwK2DH0d0rEHlPeI1OpFMjUeXedHyj5mfD6Yyd2moa44pIQX4uj2cSDJeYdXs+tIB8PwS6pMhzVdgvxd4F75ekXtWecHWNyigGIW9rcJ0BBR0kBO5ihciGcJXfC6THmqZhMHbddopVWDo+M/YUGiFedoDcCA+zHS06tWagRS1Y79G6ARgHFffUK+PVCN7mKpawNiR43HAGW4ggn0wheYUXQDXEkkSc6JWr1i1M+ldgOzxIiM6ZQit/Re5DTAxwChUrqsgv3hbFHWKsMuGRYxWE5LCAPMxsVsEImHLi+jmBST3MqDnqwO6MLU4po3QVLr413FovNHu8FfjQQLqveD/B0kHk8xBICTl+CSaL0gmto0iKO04knbqvXBRVNfhnosiTfbRaEQycmThLPjeKymqjqqUjuM5TVz76xFjHsWpaOb4puaQ4UejgNXcDK4QMu6VqHtazRdo1Pb9eGJjdJ3lboFjjdY1ZaeG6UGFdqzoMttgx+gWbClQusHgvUCZ1DYZ2iVFHqctoBzM6Q3QxV4Hb2+QGUIKXWsoozpQtLdffrweVuC1JNTFt5FxyVkD+tDRF8hrLtee0+sMsNQv2OcUymzdpc49Wka1t5BLX8g==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH0PR11MB5095.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230025)(376002)(136003)(346002)(366004)(396003)(39860400002)(451199018)(66899018)(66556008)(41300700001)(2906002)(6862004)(8936002)(5660300002)(52536014)(38100700002)(71200400001)(82960400001)(122000001)(86362001)(64756008)(7696005)(76116006)(8676002)(66946007)(478600001)(66476007)(4326008)(33656002)(55016003)(83380400001)(186003)(6636002)(54906003)(53546011)(107886003)(6506007)(66446008)(26005)(9686003)(316002)(38070700005);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?/Ar7RWkqsFBESW+iX2tdwlWs7QYLJez1GovvkbNQXdwk5UOtYEuwZijNF0ml?=
 =?us-ascii?Q?Oao+2GwTpuFesdeuSjnNa2XRFIhNDELZpUATM9xdsexStEKMbf8f7NtjHaXJ?=
 =?us-ascii?Q?IfiLjvdGF0zH2EWOnimrk3rCWdtwr82OSSlqQWCxh/pRUlyD1lDD47HywDt4?=
 =?us-ascii?Q?be+/l8SAOZqc7c+cye54t/vYmO+X93NaBQm5ae+/o4PG/5w+WY+pRkRMenXA?=
 =?us-ascii?Q?swUqbIjXD4WBHBOSax4wuP0vhWvh1xBP/zl/ledZ9mCEa0im2WY5waQgjdZr?=
 =?us-ascii?Q?m20JtK9S6W/oVAIkvKB0bw4z23zkF4rsh4E1qHaJLw3f/mVe/PR8spz9Jpp7?=
 =?us-ascii?Q?DI99YR3u98nMrvWBSmFtjHKVX/5LQn2jpDqOWDgTrfDMitdFhShqnCkY+kGP?=
 =?us-ascii?Q?0WnaIbqxYnOzzPp+sXwBUN3or2JaTRylQN/ilERAtHmZlph0V7osmxo33MIy?=
 =?us-ascii?Q?gN4wr+nRcC2vKMvQNWp75LYoJStyOyZC44fyBIDAP8eEZ4nVwjPBpRMB2FnT?=
 =?us-ascii?Q?ANlgB4Ihs4AoF5UjLth/Hr9eN8I8ZeSrdzMRCf6QzQGV5ZDBAYDKrXAYE78q?=
 =?us-ascii?Q?6+9Vzzs/5z8e9lTyAS1uRygK38Aty4UtCRPNS4fkVvCFz+pikCtH0elep4+L?=
 =?us-ascii?Q?yKcsUtoy1Y1rXW11GSi2b2f7VT7ngbeFjURo2ZVC5PRh4+BB/3T6JKf3GZwP?=
 =?us-ascii?Q?a7EkuqMOQRQTbeTRhwR1AbIN+/v+TWU+ECLSvmb9kzjTnF7GYac5O+OBrd/f?=
 =?us-ascii?Q?VAn4YfNdgmxLyEJiF5+pJTyAc5HJYdnnhgi7tWAR2dvkWL9lyy0QwbNRMQex?=
 =?us-ascii?Q?2vj60XnqQVMyM6gM2kyw/jZyhNoxaCIU/9zg3jurkFfMWIOruy7+A8BLqFv1?=
 =?us-ascii?Q?DGchkOxq1dC1oLb2sSfvpnFpFvAgV5WsYrP1irFQHzEtf+FInPvtqHlGr91g?=
 =?us-ascii?Q?WpGOlqyLAxwocGiiZL0LeFeiPlr1cJ2eynXrno3kmfAYpYrPU+etZ+PYUNAU?=
 =?us-ascii?Q?2/gu15dh1rBpWO8LsxoH79E/F4lr3/tjDpkaH7cquKWLYKqPtr0+QA99/E1H?=
 =?us-ascii?Q?aflADjKEoPhv6AZRKDi+tVjKZClPyLmvRycQEpyfbqwMxZ3VszzCMcGRdXaH?=
 =?us-ascii?Q?FAQcgWY87suTKLLXTjvNyvvklpsJoHwPI9mfx0OOSjFlsfHyp6CEflsqkUpF?=
 =?us-ascii?Q?/urJokG9rZcxpCdOrvMQETpzVhAnZBvy4CwRj5IY4I7QMuupe7FtkxsSVmeZ?=
 =?us-ascii?Q?dAm3+vfeJliXpBVHyj4BtyVUlyHQFnH1rqJ3LAdWda5o09mOFgYcf2jxjDHd?=
 =?us-ascii?Q?Cs+BIu9b0kok/DP/ISng7deLPifO29FqZAo/2+OheUhd1LjqtNRjiylOm8gq?=
 =?us-ascii?Q?tj3uOW76eqb/2tt3w5P2cdEIr/i5aWer0SnzougBOuisv0kd6JSoYsEE7x6E?=
 =?us-ascii?Q?BI8uSNs/EWci0NxzHwkMySRv/DZ1ABcbkeHVK9azulatxRFda8n7EVI0eWXf?=
 =?us-ascii?Q?YiE+K+MUAIb8y0OAu/OKfm9JZN7CLO0Uf1KZCYywzdbOxSFSxmR8j362YjxV?=
 =?us-ascii?Q?1bxjzAqFFyrVU2y14dj2LPXGgl6KFjpdgPgR8k4J?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: PH0PR11MB5095.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 7b7edf1a-bf4b-4eb3-703f-08db2b082b17
X-MS-Exchange-CrossTenant-originalarrivaltime: 22 Mar 2023 19:03:48.5433 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: KqhjDskN3ix4gtUUGJU0zeJsF5MdUr8C27l3gquvlMULbXkJ4AvyoeTJpl/dhppEY9tGgYU57OxEhLVSKNUyEublwdtUNjDXQAWvR7u14X4=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM4PR11MB6406
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1679511860; x=1711047860;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=+c3YUl46xs5qaCG3MgQ5TVjdJ0gnS9XitJSnzv1Hdw0=;
 b=in9/qMIKPTF0FVgNpSUHCzQAWEEBQNTqzCJWPt5loKK9ytmRuYY+lQKt
 aKhVJpSM6+UKl+6Dscjy6wdsOTNm1lTMrQ9k4zFs6/eHoUwM2YmCkt2kY
 V7KNfYjBxa9CN2QXYfSAph4jmPH6nymhFwRNYd2z+ypSlyl+k9ejb9Egp
 ssJB4r4DwaTKiaDd7kHWUqQknmTBru58zpqoz2NcgAav73qG0ovAbTLi2
 0BWbQByVtYKue1iCTSTtt1dWEL+MJclxXS942lyjLcKUDg+x1Dge3/fKV
 VkeuwXbJXtxjwbfFrZZ9Nc++ON07ocCiAzluYwhTLPkwRo9W1fU/gHuHS
 Q==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=in9/qMIK
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net-next v2 0/8] ice: support dynamic
 interrupt allocation
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
Cc: "Swiatkowski, Michal" <michal.swiatkowski@intel.com>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>, "Brandeburg,
 Jesse" <jesse.brandeburg@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>, "Saleem,
 Shiraz" <shiraz.saleem@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>



> -----Original Message-----
> From: Raczynski, Piotr <piotr.raczynski@intel.com>
> Sent: Wednesday, March 22, 2023 11:41 AM
> To: Keller, Jacob E <jacob.e.keller@intel.com>
> Cc: intel-wired-lan@lists.osuosl.org; netdev@vger.kernel.org; Swiatkowski,
> Michal <michal.swiatkowski@intel.com>; Saleem, Shiraz
> <shiraz.saleem@intel.com>; Samudrala, Sridhar
> <sridhar.samudrala@intel.com>; Brandeburg, Jesse
> <jesse.brandeburg@intel.com>; Lobakin, Aleksander
> <aleksander.lobakin@intel.com>; Czapnik, Lukasz <lukasz.czapnik@intel.com>
> Subject: Re: [PATCH net-next v2 0/8] ice: support dynamic interrupt allocation
> 
> On Wed, Mar 22, 2023 at 10:33:31AM -0700, Jacob Keller wrote:
> >
> >
> > On 3/22/2023 9:25 AM, Piotr Raczynski wrote:
> > > This patchset reimplements MSIX interrupt allocation logic to allow dynamic
> > > interrupt allocation after MSIX has been initially enabled. This allows
> > > current and future features to allocate and free interrupts as needed and
> > > will help to drastically decrease number of initially preallocated
> > > interrupts (even down to the API hard limit of 1). Although this patchset
> > > does not change behavior in terms of actual number of allocated interrupts
> > > during probe, it will be subject to change.
> > >
> > > First few patches prepares to introduce dynamic allocation by moving
> > > interrupt allocation code to separate file and update allocation API used
> > > in the driver to the currently preferred one.
> > >
> > > Due to the current contract between ice and irdma driver which is directly
> > > accessing msix entries allocated by ice driver, even after moving away from
> > > older pci_enable_msix_range function, still keep msix_entries array for
> > > irdma use.
> > >
> > > Next patches refactors and removes redundant code from SRIOV related logic
> > > as it also make it easier to move away from static allocation scheme.
> > >
> > > Last patches actually enables dynamic allocation of MSIX interrupts. First,
> > > introduce functions to allocate and free interrupts individually. This sets
> > > ground for the rest of the changes even if that patch still allocates the
> > > interrupts from the preallocated pool. Since this patch starts to keep
> > > interrupt details in ice_q_vector structure we can get rid of functions
> > > that calculates base vector number and register offset for the interrupt
> > > as it is equal to the interrupt index. Only keep separate register offset
> > > functions for the VF VSIs.
> > >
> > > Next, replace homegrown interrupt tracker with much simpler xarray based
> > > approach. As new API always allocate interrupts one by one, also track
> > > interrupts in the same manner.
> > >
> > > Lastly, extend the interrupt tracker to deal both with preallocated and
> > > dynamically allocated vectors and use pci_msix_alloc_irq_at and
> > > pci_msix_free_irq functions. Since not all architecture supports dynamic
> > > allocation, check it before trying to allocate a new interrupt.
> > >
> > > As previously mentioned, this patchset does not change number of initially
> > > allocated interrupts during init phase but now it can and will likely be
> > > changed.
> > >
> > > Patch 1-3 -> move code around and use newer API
> > > Patch 4-5 -> refactor and remove redundant SRIOV code
> > > Patch 6   -> allocate every interrupt individually
> > > Patch 7   -> replace homegrown interrupt tracker with xarray
> > > Patch 8   -> allow dynamic interrupt allocation
> > >
> > > Change history:
> > > v1 -> v2:
> > > - ice: refactor VF control VSI interrupt handling
> > >   - move ice_get_vf_ctrl_vsi to ice_lib.c (ice_vf_lib.c depends on
> > >     CONFIG_PCI_IOV)
> > >
> >
> > The other option would have been to make ice_vf_lib.h have a no-op
> > function that always returned NULL, since we generally would know that
> > there are no VF ctrl VSI if CONFIG_PCI_IOV is disabled.
> >
> > But I'm ok with it being in ice_lib.c too.
> >
> > Thanks,
> > Jake
> 
> Thanks, that makes more sense, a little bit too hasty here.

The main callers are in ice_lib.c so I think its ok to keep it there as well. I think we can go with v2 unless some other comments come up.

Thanks,
Jake
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
