Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 326E564D652
	for <lists+intel-wired-lan@lfdr.de>; Thu, 15 Dec 2022 07:06:04 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 9AE0641898;
	Thu, 15 Dec 2022 06:06:02 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 9AE0641898
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1671084362;
	bh=09xuRgcO2AX8LDWkAsZxC62gqdY5YZmQE+pVT1dQraI=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=EAP6cYLr3bg4d7BokDbrhnwkjUEDtmsGGHISFpR/TS2tituRKFYa4ObAOKxscvmPi
	 NIeDqMmww7V56/8irwIEKgIxqsr7o91xqZWQZonih0acgVz/546FzAyF9AyFFTm5Et
	 m3L7gfoN/X/PTQwb23tmwFg1WWsPhTM9aTKeGPx13sHKSjUd+p6qeRPRteondSCcoT
	 4k6fccF9yD8yvAdXdt6OAq5FR3b97dd41CNlEIQDwsw1Wc9jWEpeEl9xtf5ywqoY6p
	 VVrmCb8er9X3SAY9tD75yftLk0I60LshQMpSnF8BoY6uKbRUNf6wNEQrVhXLsuPtEa
	 x48twyRvzZCyg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 9UQMvsfpk63X; Thu, 15 Dec 2022 06:06:01 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id C5F574049C;
	Thu, 15 Dec 2022 06:06:00 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org C5F574049C
X-Original-To: intel-wired-lan@osuosl.org
Delivered-To: intel-wired-lan@osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 87C771BF846
 for <intel-wired-lan@osuosl.org>; Thu, 15 Dec 2022 06:05:55 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 57CDE60AD5
 for <intel-wired-lan@osuosl.org>; Thu, 15 Dec 2022 06:05:55 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 57CDE60AD5
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id YjAhLnA2LAl8 for <intel-wired-lan@osuosl.org>;
 Thu, 15 Dec 2022 06:05:54 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org DE38B60A97
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by smtp3.osuosl.org (Postfix) with ESMTPS id DE38B60A97
 for <intel-wired-lan@osuosl.org>; Thu, 15 Dec 2022 06:05:53 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10561"; a="382898155"
X-IronPort-AV: E=Sophos;i="5.96,246,1665471600"; d="scan'208";a="382898155"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Dec 2022 22:05:52 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10561"; a="642793230"
X-IronPort-AV: E=Sophos;i="5.96,246,1665471600"; d="scan'208";a="642793230"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by orsmga007.jf.intel.com with ESMTP; 14 Dec 2022 22:05:51 -0800
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Wed, 14 Dec 2022 22:05:51 -0800
Received: from fmsmsx602.amr.corp.intel.com (10.18.126.82) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Wed, 14 Dec 2022 22:05:50 -0800
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16 via Frontend Transport; Wed, 14 Dec 2022 22:05:50 -0800
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.104)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.16; Wed, 14 Dec 2022 22:05:50 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=CvRwWdax40ZzEXcHCEw7YEjSEtwjH7VBi3E162aZiLG72dTUuvyuTVN0aefrFKEk7qn7vJUFDLbfi96JqruLwTdBj5PS9TuDEY6t68mOZsUbu/mDNQsACn/2hH7liFv01eyG2NtWIdUUvZlvE2ZckX9VKDetc3bQ/sbNosCeXppijCqy4ZgEFSgWWfeImDiURVsiApKQr+bhovKNGPvA2V/93TMnVrRLijwHgkJN1nhAFKAzVgYFrMoxM9Jyk3pnB01cHHw4rfU6zJ+XdvVRrpa6vqNlwtv1CDWpiJioGilHASSkR0LXBL0qWtWU0XIK5/Rqa1Kera4d5HX+mRRgsg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=xPLaSWu+jekyQY0uzi9X8+118ysTDjAYbY/5cR7gvHY=;
 b=OJ0Jing6yg+CAfZ0YSs3IItPjz4EvLI2e4P1NskkGQBu4j+EApuYW9B/eV8KCodwFX57WcxnjXcxAJ6p+laJMSgxt6wGSm0JELo+X6n66HuHRU/HjnwxVinhX+LqL0+HrZMh1LFY8OMa2bYWrpQjZgao+W0HZCBSj0qvniXFlp575YcjbRFLW27vJg45MMxged+EaZDtBB8L6ytwkxsJfgyd93yxn38LioxhcPRT68WhTlPwWTHHgX/Mu7SsW3Q4QHOC7hEriNhPzrRQNpXbsLNbvFFV2HNqGKkufhxevYV1Yde4ZZMBhxhfwKtXaKtRp3S8PklR1mJ4i52qTCFy0g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SJ1PR11MB6180.namprd11.prod.outlook.com (2603:10b6:a03:459::14)
 by MN0PR11MB6303.namprd11.prod.outlook.com (2603:10b6:208:3c1::10)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5880.19; Thu, 15 Dec
 2022 06:05:44 +0000
Received: from SJ1PR11MB6180.namprd11.prod.outlook.com
 ([fe80::8923:42c6:513e:a331]) by SJ1PR11MB6180.namprd11.prod.outlook.com
 ([fe80::8923:42c6:513e:a331%5]) with mapi id 15.20.5880.019; Thu, 15 Dec 2022
 06:05:43 +0000
From: "Zulkifli, Muhammad Husaini" <muhammad.husaini.zulkifli@intel.com>
To: "Gomes, Vinicius" <vinicius.gomes@intel.com>, "intel-wired-lan@osuosl.org"
 <intel-wired-lan@osuosl.org>
Thread-Topic: [PATCH net-next v1] igc: offload queue max SDU from tc-taprio
Thread-Index: AQHZD8sZGnJnNfRJykWBd7pxJi4JaK5toEIAgADU9XA=
Date: Thu, 15 Dec 2022 06:05:43 +0000
Message-ID: <SJ1PR11MB61804722400A816E3DB0AD51B8E19@SJ1PR11MB6180.namprd11.prod.outlook.com>
References: <20221214144514.15931-1-muhammad.husaini.zulkifli@intel.com>
 <87tu1xc3bz.fsf@intel.com>
In-Reply-To: <87tu1xc3bz.fsf@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SJ1PR11MB6180:EE_|MN0PR11MB6303:EE_
x-ms-office365-filtering-correlation-id: 1037cb87-85ed-43d7-477e-08dade62668f
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: PeAMCDIZKMxGSU1H3hy6Idz1vSjU/SW6yTnct1aqwBkmIPRosD3TfVnoANJL6j2OZK2wuA2EgbLo109KXg2RUs/i44DyDc5G5AUYyfCuhehduFMGD0xUC+f5wT0WxuDB8MkkjHXXbueB1Bjx19oW69Cb0s8S4/bOp/C0XpZfLubMce2hdeDfQ1MLh/KkqMsXOVaVh3sgtZvRLc6Gu5Oz2K7sHToDY9+3ZB/ZZTDfltu/gooUUUuAMRmRMyUaH08S8mvQ/n+C8FYQ3x4zlr4yOXeF8VhCJz2dIBmfjktuaWBwOE6EOeYfiX3fltwy0f8HOqC4sZLFCWi8STToMEewwNIsLkViaOJ0D8fmzzhSSFZ9C7VvAFRPwMwfRLdxxujPL5fXn++I6tuaPHmXegn6f2SzU52f7tpDLpWZSBy3a+QdlVjlyQVRwdYn5NK3+j1NnXSNn2vYqFS9vy0CdqyxfU7BbKIvuvb3eCZ8fB3uxIKDdg5dKCVGP2uhEF0ip+2WNPp08AjICg83W3zWJOtnbzTArmL/yK4YCieuR+PJwS8U0jrzJojlMO8k0IInN9/9fc/Y7XZtIzDwpZnpuuam4sl6bpq2rebur0oZoHRayldnzgCoAiyFJqD8Q4jUHjCWSf61LnLUjvRfvLqSyzDTEZRm3X2LXRVo9b8Eou6TlhbmoH8MS0icCpB3WUQWvs3n3swxAqUnCwRDNbuGeJSXUQ==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ1PR11MB6180.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(366004)(396003)(376002)(136003)(39860400002)(346002)(451199015)(4326008)(2906002)(76116006)(186003)(82960400001)(6506007)(41300700001)(66556008)(71200400001)(478600001)(38070700005)(26005)(54906003)(316002)(110136005)(7696005)(122000001)(64756008)(8676002)(86362001)(9686003)(53546011)(66446008)(66476007)(66946007)(33656002)(38100700002)(5660300002)(83380400001)(8936002)(55016003)(52536014);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?3Zrrppgyr8eJO7cvTtdOVqaIrN3GrpMnCuaj/oWZxgG5GKnp8C9Q+nN13MOA?=
 =?us-ascii?Q?4ZgGOHds3rZ4gvBRoIxkRkMoOb+a/iNTKYgAjFQzI8WNOzoaF3xi+eyx200u?=
 =?us-ascii?Q?cz5pMHZ4cK2xm544fNbYGhwibX9hqgHFdAMlw0qY9dnq7WqzSECe6xvuscMc?=
 =?us-ascii?Q?/n0Am7uzc2m36O9ENpRXz9jTijpCHFy7KXnO/ktqds3DmGHqDOqLQ4w4CC8g?=
 =?us-ascii?Q?6VkKCyj7xfym5Je5tyjJPGASCtbUR7+vJdWUYRgfh/U64x5UD+alg95+R4X3?=
 =?us-ascii?Q?tKERcgwJm72yFZluS7inQl9ZYQ4V2pg7m6yMjVafLAO6+hoVtjwXWTRM0Ey3?=
 =?us-ascii?Q?F5Mq4BQwTl3w/dpvUYA1BNYetsc5TglQ7yFVPxnVGFEyW4+MNJKJL3C506Mz?=
 =?us-ascii?Q?kVnmavN+8cwvjTq8UCrdD5An8kFL166syuYUgvAm9wfD90l8sk5v9mh6TJKW?=
 =?us-ascii?Q?Dz1rpvy5qXYaprt6edPcL97EJma/bV1U+HXItOpvrCGgjo9kcO4WQ9kIzcBk?=
 =?us-ascii?Q?1OljZiSL73sKtumK+irybQsyxhQQisk77EyGk7SjWAa92Gj5dQCBXutJ45BP?=
 =?us-ascii?Q?ExnV22zMCqsUrg0RKB11zXp5ltZi7COGbrM6YG2HdM7klFKofgQ1p/dc7vSg?=
 =?us-ascii?Q?uCd2y41BXr4M4jEkgGpixpDA+8UlnUq3rJH5/tfdROCOhK+iHPABmWxg/UIa?=
 =?us-ascii?Q?/aGIe1CZ7CwnC53RaX7hp7kTprmKgPgUi1y8D5cq/DMo+gNfSkIZauyi5gqo?=
 =?us-ascii?Q?g/+A2wnKCQglCyNmf1b1EuSD0hNJVmOlye61zPC3f5kGfPT0m4Z5YRH+U6on?=
 =?us-ascii?Q?H5dmJGI+ivyoHVUGA0ZeDwVIy0RMpGE52LwLtkcDuJRkd8mC4Bc/Bl97cYn8?=
 =?us-ascii?Q?lj1QyKXQUWFFG9HZA7alogqnOsQLzdKnLaW5oV6qRWCoOynob/LBW36Z0BYE?=
 =?us-ascii?Q?BYmHz8jTKrJrQ8TwDuz278sK9fbBi+uL1nlK0o+vh2eG+i5Xv70CBQDAFQeZ?=
 =?us-ascii?Q?5/5X9fdBVqiG8KUbDig5wSAMdLmfZ1zjjsNN8bvV8NBhUCDd3K0FU3kOVQym?=
 =?us-ascii?Q?sbvMfMlky/eGntPJ7z0wRaVmZfoycDBWoEqt3AFqBCofjNTmtbhKlSZj1VjY?=
 =?us-ascii?Q?27v74scf1gVasDuo8B85Fw5Zusa9w9wp3/ZZrSEUAegLhoI22dHPAzUBSaIY?=
 =?us-ascii?Q?OXJ/p+IPSsrGB39PmO92CChq5fc7kP+Et60M0CZrytLUcJwj/ugiXYbt9BQK?=
 =?us-ascii?Q?vYCmKCrr72AHn+YyRUwdIGcjaVccPJ5sKSf8sMwXYi8dJnbBvzpivJmrjN9E?=
 =?us-ascii?Q?3Weh5NmBAID8NdwZfzxbESh+iokal0B0M32IInVWwpFbTEOiq4piiqe37x62?=
 =?us-ascii?Q?so/bQPvndQJs9Ff4DabC5G5JOYmYVXA96GFYh49KS2BS/R42Zlev8UmIBtS0?=
 =?us-ascii?Q?lbLoUcME2IBHhCRrf9BA9ECTscVelO/0nxWUzSEjOvYY829dxv4pxI5DwtjB?=
 =?us-ascii?Q?FfspR1sFpbZPjTnmQ7zVqC5amanH19wNrQr76oR4K0hSeS7LVst+OQZaLXzi?=
 =?us-ascii?Q?RBcXkv2swj3yPw4f1QfWGgkk31jlz7gYjKW9p1tE2Di/hqUIJZ4IPbIfsCvG?=
 =?us-ascii?Q?0+yCPt+fKYt+0ZFc9bBbwqo=3D?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SJ1PR11MB6180.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 1037cb87-85ed-43d7-477e-08dade62668f
X-MS-Exchange-CrossTenant-originalarrivaltime: 15 Dec 2022 06:05:43.4861 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: ob0hDMruNhJeUWmV6tR94fk9LcvGuUa/GyK/HiKmQIJb7eSUUQs4hT0rqWDF5SCZa8lrVidwv+x1ZzEVZ7PASCpxuKtdjz2/uLWbVqFXY3mnyaM2GoDvWF2htFYIIt/u
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN0PR11MB6303
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1671084353; x=1702620353;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=9YtK8IosNhIBIZWKd7uu9XiD/cwsXdpv8kFpGK/oCCQ=;
 b=Rc78JSFKP2427DD3vW7nytV36C5fqOg8HqFFj0YaJTe1ZwJs41uzSa0V
 3L4fLFS7aV9YQaHzVFXVakXLk/XUaKR+GliVvpxMSxaVPTExY44yVtOR8
 o1jWv4lBhX7x3seNYKxT+9nRFPpwhfcWAC8sidx1vZkf+/0s+UTFSzghq
 rQfXTgwfsMckaQ+5TezBaw2eIRJfiAQi6IC1EhEdNIcy8U7gjO0lc3VE/
 IAs22lFNexAEQNGRLeMdyIOClyAyzvuFHLQjxkssHFuxpTTQc0D/cP9Q5
 AnuVmv2f2uElgzkKAlIfnn4caGmpz0u2DQxwGsIAr7/XfX28D+VHHoEYC
 w==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=Rc78JSFK
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net-next v1] igc: offload queue max
 SDU from tc-taprio
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
Cc: "tee.min.tan@linux.intel.com" <tee.min.tan@linux.intel.com>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>, "Nguyen, Anthony
 L" <anthony.l.nguyen@intel.com>, "kuba@kernel.org" <kuba@kernel.org>,
 "davem@davemloft.net" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Hi Vinicius,

> -----Original Message-----
> From: Gomes, Vinicius <vinicius.gomes@intel.com>
> Sent: Thursday, 15 December, 2022 1:17 AM
> To: Zulkifli, Muhammad Husaini <muhammad.husaini.zulkifli@intel.com>;
> intel-wired-lan@osuosl.org
> Cc: tee.min.tan@linux.intel.com; davem@davemloft.net; kuba@kernel.org;
> netdev@vger.kernel.org; Zulkifli, Muhammad Husaini
> <muhammad.husaini.zulkifli@intel.com>; naamax.meir@linux.intel.com;
> Nguyen, Anthony L <anthony.l.nguyen@intel.com>
> Subject: Re: [PATCH net-next v1] igc: offload queue max SDU from tc-taprio
> 
> Hi,
> 
> Muhammad Husaini Zulkifli <muhammad.husaini.zulkifli@intel.com> writes:
> 
> > From: Tan Tee Min <tee.min.tan@linux.intel.com>
> >
> > Add support for configuring the max SDU for each Tx queue.
> > If not specified, keep the default.
> >
> > Signed-off-by: Tan Tee Min <tee.min.tan@linux.intel.com>
> > Signed-off-by: Muhammad Husaini Zulkifli
> > <muhammad.husaini.zulkifli@intel.com>
> > ---
> >  drivers/net/ethernet/intel/igc/igc.h      |  1 +
> >  drivers/net/ethernet/intel/igc/igc_main.c | 45
> +++++++++++++++++++++++
> >  include/net/pkt_sched.h                   |  1 +
> >  net/sched/sch_taprio.c                    |  4 +-
> >  4 files changed, 50 insertions(+), 1 deletion(-)
> >
> > diff --git a/drivers/net/ethernet/intel/igc/igc.h
> > b/drivers/net/ethernet/intel/igc/igc.h
> > index 5da8d162cd38..ce9e88687d8c 100644
> > --- a/drivers/net/ethernet/intel/igc/igc.h
> > +++ b/drivers/net/ethernet/intel/igc/igc.h
> > @@ -99,6 +99,7 @@ struct igc_ring {
> >
> >  	u32 start_time;
> >  	u32 end_time;
> > +	u32 max_sdu;
> >
> >  	/* CBS parameters */
> >  	bool cbs_enable;                /* indicates if CBS is enabled */
> > diff --git a/drivers/net/ethernet/intel/igc/igc_main.c
> > b/drivers/net/ethernet/intel/igc/igc_main.c
> > index e07287e05862..7ce05c31e371 100644
> > --- a/drivers/net/ethernet/intel/igc/igc_main.c
> > +++ b/drivers/net/ethernet/intel/igc/igc_main.c
> > @@ -1508,6 +1508,7 @@ static netdev_tx_t igc_xmit_frame_ring(struct
> sk_buff *skb,
> >  	__le32 launch_time = 0;
> >  	u32 tx_flags = 0;
> >  	unsigned short f;
> > +	u32 max_sdu = 0;
> >  	ktime_t txtime;
> >  	u8 hdr_len = 0;
> >  	int tso = 0;
> > @@ -1527,6 +1528,16 @@ static netdev_tx_t igc_xmit_frame_ring(struct
> sk_buff *skb,
> >  		return NETDEV_TX_BUSY;
> >  	}
> >
> > +	if (tx_ring->max_sdu > 0) {
> > +		if (skb_vlan_tagged(skb))
> > +			max_sdu = tx_ring->max_sdu + VLAN_HLEN;
> > +		else
> > +			max_sdu = tx_ring->max_sdu;
> 
> perhaps this?
>     max_sdu = tx_ring->max_sdu + (skb_vlan_tagged(skb) ? VLAN_HLEN : 0);
> 
> Totally optional.

Sure. We can change to above suggestion.

> 
> > +
> > +		if (skb->len > max_sdu)
> > +			goto skb_drop;
> > +	}
> > +
> 
> I don't think the overhead would be measurable for the pkt/s rates that a
> 2.5G link can handle. But a test and a note in the commit message confirming
> that would be nice.

IMHO, it should not depends on the link speed but the packet size only.
If we detect packet size greater than max_sdu, we will just drop it.

> 
> >  	if (!tx_ring->launchtime_enable)
> >  		goto done;
> >
> > @@ -1606,6 +1617,12 @@ static netdev_tx_t igc_xmit_frame_ring(struct
> sk_buff *skb,
> >  	dev_kfree_skb_any(first->skb);
> >  	first->skb = NULL;
> >
> > +	return NETDEV_TX_OK;
> > +
> > +skb_drop:
> > +	dev_kfree_skb_any(skb);
> > +	skb = NULL;
> > +
> >  	return NETDEV_TX_OK;
> >  }
> >
> > @@ -6015,6 +6032,7 @@ static int igc_tsn_clear_schedule(struct
> > igc_adapter *adapter)
> >
> >  		ring->start_time = 0;
> >  		ring->end_time = NSEC_PER_SEC;
> > +		ring->max_sdu = 0;
> >  	}
> >
> >  	return 0;
> > @@ -6097,6 +6115,15 @@ static int igc_save_qbv_schedule(struct
> igc_adapter *adapter,
> >  		}
> >  	}
> >
> > +	for (i = 0; i < adapter->num_tx_queues; i++) {
> > +		struct igc_ring *ring = adapter->tx_ring[i];
> > +
> > +		if (qopt->max_frm_len[i] == U32_MAX)
> > +			ring->max_sdu = 0;
> > +		else
> > +			ring->max_sdu = qopt->max_frm_len[i];
> > +	}
> > +
> >  	return 0;
> >  }
> >
> > @@ -6184,12 +6211,30 @@ static int igc_tsn_enable_cbs(struct igc_adapter
> *adapter,
> >  	return igc_tsn_offload_apply(adapter);  }
> >
> > +static int igc_tsn_query_caps(struct tc_query_caps_base *base) {
> > +	switch (base->type) {
> > +	case TC_SETUP_QDISC_TAPRIO: {
> > +		struct tc_taprio_caps *caps = base->caps;
> > +
> > +		caps->supports_queue_max_sdu = true;
> > +
> > +		return 0;
> > +	}
> > +	default:
> > +		return -EOPNOTSUPP;
> > +	}
> > +}
> > +
> >  static int igc_setup_tc(struct net_device *dev, enum tc_setup_type type,
> >  			void *type_data)
> >  {
> >  	struct igc_adapter *adapter = netdev_priv(dev);
> >
> >  	switch (type) {
> > +	case TC_QUERY_CAPS:
> > +		return igc_tsn_query_caps(type_data);
> > +
> >  	case TC_SETUP_QDISC_TAPRIO:
> >  		return igc_tsn_enable_qbv_scheduling(adapter, type_data);
> >
> > diff --git a/include/net/pkt_sched.h b/include/net/pkt_sched.h index
> > 38207873eda6..d2539b1f6529 100644
> > --- a/include/net/pkt_sched.h
> > +++ b/include/net/pkt_sched.h
> > @@ -178,6 +178,7 @@ struct tc_taprio_qopt_offload {
> >  	u64 cycle_time;
> >  	u64 cycle_time_extension;
> >  	u32 max_sdu[TC_MAX_QUEUE];
> > +	u32 max_frm_len[TC_MAX_QUEUE];
> >
> 
> 'max_frm_len' is an internal taprio optimization, to simplify the code where
> the underlying HW doesn't support offload.

The max_sdu only comes with MTU payload size. The reason why we are using 
this max_frm_len is to get the header + MTU size together. 

We can use max_sdu + header in the igc_save_qbv_schedule() and remove 
this piece of code from pkt_sched.h

> 
> For offloading, only 'max_sdu' should be used. Unless you have a strong
> reason. If you have that reason, it should be a separate commit.
> 
> >  	size_t num_entries;
> >  	struct tc_taprio_sched_entry entries[]; diff --git
> > a/net/sched/sch_taprio.c b/net/sched/sch_taprio.c index
> > 570389f6cdd7..d39164074756 100644
> > --- a/net/sched/sch_taprio.c
> > +++ b/net/sched/sch_taprio.c
> > @@ -1263,8 +1263,10 @@ static int taprio_enable_offload(struct
> net_device *dev,
> >  	offload->enable = 1;
> >  	taprio_sched_to_offload(dev, sched, offload);
> >
> > -	for (tc = 0; tc < TC_MAX_QUEUE; tc++)
> > +	for (tc = 0; tc < TC_MAX_QUEUE; tc++) {
> >  		offload->max_sdu[tc] = q->max_sdu[tc];
> > +		offload->max_frm_len[tc] = q->max_frm_len[tc];
> > +	}
> >
> >  	err = ops->ndo_setup_tc(dev, TC_SETUP_QDISC_TAPRIO, offload);
> >  	if (err < 0) {
> > --
> > 2.17.1
> >
> 
> --
> Vinicius
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
