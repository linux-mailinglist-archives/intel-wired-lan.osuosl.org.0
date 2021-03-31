Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id E25783508AF
	for <lists+intel-wired-lan@lfdr.de>; Wed, 31 Mar 2021 23:01:17 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 19EC140EDD;
	Wed, 31 Mar 2021 21:01:16 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id fXieFSnWcSIO; Wed, 31 Mar 2021 21:01:15 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id BC4B840EDB;
	Wed, 31 Mar 2021 21:01:14 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 8351F1BF2CA
 for <intel-wired-lan@lists.osuosl.org>; Wed, 31 Mar 2021 21:01:10 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 6F3B460B75
 for <intel-wired-lan@lists.osuosl.org>; Wed, 31 Mar 2021 21:01:10 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp3.osuosl.org (amavisd-new);
 dkim=pass (1024-bit key) header.d=intel.onmicrosoft.com
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id dlSOqnckP2kp for <intel-wired-lan@lists.osuosl.org>;
 Wed, 31 Mar 2021 21:01:09 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 92ECD60B6A
 for <intel-wired-lan@lists.osuosl.org>; Wed, 31 Mar 2021 21:01:09 +0000 (UTC)
IronPort-SDR: mE4vHmj45agqA2OoJNRtqrMX1zAiXmLK62yXyz8V+nCdnYlv5byu90I8kO9TxP30908MlDENU/
 6Ouxlg7WICjg==
X-IronPort-AV: E=McAfee;i="6000,8403,9940"; a="256075026"
X-IronPort-AV: E=Sophos;i="5.81,293,1610438400"; d="scan'208";a="256075026"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Mar 2021 14:01:08 -0700
IronPort-SDR: Sb/ewlCqwcxRLOA+n9wsy5i0I4gn1jv8wD55oKPVZXHgh7a5SYEzK2zJ7dlsw1ZLT0FvcTNW1f
 qDuaoCBZiEvA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.81,293,1610438400"; d="scan'208";a="394196142"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by orsmga002.jf.intel.com with ESMTP; 31 Mar 2021 14:01:08 -0700
Received: from fmsmsx607.amr.corp.intel.com (10.18.126.87) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2106.2; Wed, 31 Mar 2021 14:01:07 -0700
Received: from fmsmsx609.amr.corp.intel.com (10.18.126.89) by
 fmsmsx607.amr.corp.intel.com (10.18.126.87) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2106.2; Wed, 31 Mar 2021 14:01:06 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx609.amr.corp.intel.com (10.18.126.89) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2106.2
 via Frontend Transport; Wed, 31 Mar 2021 14:01:04 -0700
Received: from NAM02-DM3-obe.outbound.protection.outlook.com (104.47.56.49) by
 edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2106.2; Wed, 31 Mar 2021 14:00:10 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Xw5ZHmt3cmAOBGn7ZuVbS3ZHXkhEREi7Im0P8+J5Up4wkdDc84+nq1z/x5S9CbxaSpkOodfqTryXs121Id0Eid07No/L/W8wbBWGQlD2GetV9j6sWPWkXpyjg0x2T3m2SPVBtD/iQ9CgeeTPqbfkG048oUZ/3stF98osiFt1G/Bk89D5M0PfLa3CTE++cWxab/A9qMup3BxxfwiGzhhwD8Q+Zgr4p7iYem3qtSOCL0mTNRPK+junxwCkLL0exvagAT2mgCcn6IIsqsA8vdh3NqRKRf5JCSMHEjfz1waOHjFvzFOzQYmmDktSge8DSu+0xgQjTS+ZNhCk0MrnvEzF+g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=y57qJcl+NIb94KhRNlfaEqdySwKxIQeHhH2nVNsNeZM=;
 b=MNMZxdi0v6o3hZgwp9hiHJ5Xmv9mINzzScWBoTkLJWfBYSN+nuW6mNmvvLWYHIkTArkiii5RRkv+09ryRc5oulyc4KXuRUmnMd4WHAiscVvgXHSFLgFeymI1cL3SojyvM3BJBOok+N/jDgvCmuLa1wUWQk7reFv99d3pP5RCID+DZDXNnoA3v3AbREvo2yYGhylX9blcy1z+AUVrkKWgTFZswT+fvExwkjZdUU6NuSWpOOIvR3uiTkJLwLOtWgAHmd1o6aZE+s21gJF42pvVYkx/z9M2RY+W8pVuCHI+3IwR+2pFdBdDMsRXBe9kPuXPcQRUrzFsDzDhwHq/zJlgmQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=y57qJcl+NIb94KhRNlfaEqdySwKxIQeHhH2nVNsNeZM=;
 b=OjXlYUNnmQff9BhVgHb58AJqYAVkfHVvnmmQzL1RNTC9qFMQmkc9yI07se5lFByo1sCwnsmozVXFgKdF2O7/ml6ZzYhgB8spaEU5DBv0sbu/3YkwH6lGu/ObardkskwdKZOd9/ZoWeVYEvE6GaRYnYgIDy+VA+WYQLRuGllFRDY=
Received: from CO1PR11MB5105.namprd11.prod.outlook.com (2603:10b6:303:9f::7)
 by MWHPR11MB1805.namprd11.prod.outlook.com (2603:10b6:300:114::14) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3977.24; Wed, 31 Mar
 2021 21:00:00 +0000
Received: from CO1PR11MB5105.namprd11.prod.outlook.com
 ([fe80::fc78:a58:d862:c366]) by CO1PR11MB5105.namprd11.prod.outlook.com
 ([fe80::fc78:a58:d862:c366%3]) with mapi id 15.20.3977.033; Wed, 31 Mar 2021
 20:59:59 +0000
From: "Brelinski, TonyX" <tonyx.brelinski@intel.com>
To: "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH S57 04/14] ice: Ignore EMODE return for
 opcode 0x0605
Thread-Index: AQHXIciToeLTaATX4UCyR1K8WBJUKaqene/w
Date: Wed, 31 Mar 2021 20:59:59 +0000
Message-ID: <CO1PR11MB51053EE45AD9B09EF4288565FA7C9@CO1PR11MB5105.namprd11.prod.outlook.com>
References: <20210325223517.17722-1-anthony.l.nguyen@intel.com>
 <20210325223517.17722-4-anthony.l.nguyen@intel.com>
In-Reply-To: <20210325223517.17722-4-anthony.l.nguyen@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-version: 11.6.0.76
dlp-reaction: no-action
authentication-results: intel.com; dkim=none (message not signed)
 header.d=none;intel.com; dmarc=none action=none header.from=intel.com;
x-originating-ip: [71.236.132.75]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 16063ec9-a71c-41af-4713-08d8f487f28c
x-ms-traffictypediagnostic: MWHPR11MB1805:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <MWHPR11MB1805A92559A4432B3E0B4ADAFA7C9@MWHPR11MB1805.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:6790;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: riyDX0Knef+3pG3lvJCoIoVFSWLW2PJuz6zpEEE/ScUQDZ3ZwxULeNQ0pmJxA+DPJLRF+TEMk4K31X9SagQ1AzL1WsvGbK7dnjEgVqKgM1794slbAaYi4s1wB3JLn2aLHAf8Y3DZZKXc/EFbi9NUNhDOEtkMf/uS+HMGTYmnKPqnMwYVuv1qfEjiDmV0l9SpDR3sI66vRxnAZP1fQXnY9SHkaVmyvGvVWPX3WwY/4bsqGbXKo3641PyxY5yCDekteSoMCijKirzVCzCa+Ya83XFb14/eiaYfzL+SytECF1Htz7lCzhAih91D8T9lZzOLc0eDuuj5b2g3bY5XrSZRfUgraOzfa9G3tckudfd0W0bEr7YahZxVH5tFHQG0O97xUe7DzKoEcQDLw4L/Y43XhPu7uWYa4+ZAC9J2tOEsN4mdWlxcTT0HDRO5bONnTYlapXtrxVDZFoKhXbBjWeUc6MuT+TGSwoBLI9SVg6P1LtDWmKAqrX2sowSm36k8ntHQIf6ikMgwQjsJA9U21lJZMtgqDBtHuVzGULbVQSkBFCNWvwvwcG1hROZQ/7D5meGS2FkCAaedwi5Xwe/F3mmGrcEU7fOX8NxcyHaK4zqHb1XiyKZzIMHT0dqT8FF507vyHXmH4uA0P54x0EQtrV+Im34Bp3uoXwe/CF7KlRdGmxo=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CO1PR11MB5105.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(376002)(366004)(136003)(346002)(39860400002)(396003)(2906002)(83380400001)(66476007)(33656002)(71200400001)(64756008)(66446008)(9686003)(8676002)(26005)(38100700001)(55016002)(76116006)(66946007)(66556008)(53546011)(8936002)(6506007)(7696005)(5660300002)(316002)(86362001)(478600001)(186003)(52536014)(110136005);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata: =?us-ascii?Q?CVFJjWX+gKt8vdX2xrgwwEIypoiqcc0XL1r1n5G4G5232V8SIfQNZgUL4tfA?=
 =?us-ascii?Q?oCKNUhh69kNrzhkcf6KMJSqpbUk/zls7zZ16d04EbdbKpFu5UaxkqIsB4++9?=
 =?us-ascii?Q?r9e3xXjzTgMLFo417b9nO2JdRbuO9i/ILhmeOG/VaU8S+k7D+jT7Aya6roVc?=
 =?us-ascii?Q?Fnl6TmAe84B3x8+YMRnqDU/LevVgjtSE3DWmptC9qMsYgy+xYFM3l4jQMUR1?=
 =?us-ascii?Q?Qz1xO1T0vDDqzRXWyoYtZw/yK3gK1W0RSYBdjPNGTvuLnXhfc7stSGU5ToFH?=
 =?us-ascii?Q?lPikNPQ7tyINGMhJGyvVvOBEWm3G/teU8Eucclb/pGX861CdbrNEG8ZzK6xa?=
 =?us-ascii?Q?qQ9xf8SzM+jsXLUaZEh87xO6w6zcDItcRQlzys++1UoPO+xTZWRBjy3jUSv2?=
 =?us-ascii?Q?jaZqgus4jwktAFEa7AXyBYSuOd9xzar8Wkq8cxqDL7yoo3S1ZXPf4URfQS7p?=
 =?us-ascii?Q?BfuJMbBy9PY0EZI8XDTg3EijalMjmdrENr5/ui4Aw3TRJgMlAwXaIUQ9M4ot?=
 =?us-ascii?Q?uqdHAgJ0hX7rc2lGwJEqu3RlxylHR4DdSx0cX6dda94Mrbn4XGFKqz0X47V8?=
 =?us-ascii?Q?dpII670v2RXNboeuuAa6ZwqjspG2rI7nMehSL0VjdISMPGM8lWLDfmFvn6VY?=
 =?us-ascii?Q?6RttAEclk0H3nxJ8SKeQG1Sa773hymJYY72fUsQnTqV67dAhxwWDagsDhP1K?=
 =?us-ascii?Q?EFqBg/RhyAA0b4OYjFDxo3VFs84v+2EZppl52rkuoqTTbqxzhKZsfywf9ADE?=
 =?us-ascii?Q?SwAwOXQ4RMZHcNm+VNqzqDYak248wy0v7kwBU5nxsKtvYFeXJxecgepE98oH?=
 =?us-ascii?Q?kBfTOJIKNU9kfxg5JfNMplZUl9+LX3N79xZSW+7t5Wj8dijUrFWNkMlLgsmp?=
 =?us-ascii?Q?TlT0h1Kfz3y9mjr5FbRMx8u5mC+3WCcCc0r5LPDoF7qL7kW+Kt5ab3klQuNr?=
 =?us-ascii?Q?Nyczo9NJnAIXk9ohY0k6iYJa5Ir4sAkpLPQoHm+TzM2JNbfxHeIngx7TfEun?=
 =?us-ascii?Q?OKhJPmAI8+3CjvcGK4G5bPzFr4YoXWT3wmV31HgLFJu7AqZmSevkJzOfPTIg?=
 =?us-ascii?Q?1Z/EmZbsKIOP46N45u+Nq2wzbkKL+GOiQzcmcHSxm3zAjJVnkefFevFr0K/2?=
 =?us-ascii?Q?tgFmOVF3lsaReoOeQhX2SlyZWJQClNwIU9ZvHRx18neC7SJTlwn0n9jrQyOH?=
 =?us-ascii?Q?4TjEuzGtM7ITDJy5Ic/1vRPeeJhKQWnzoyrQxsveIL07yIYjonwUaVGeBmz3?=
 =?us-ascii?Q?W2/LWlvuavE+TbMkZ5i/RJ2JosdxmZQJvtyH2bqoZv7LpWwq+EV8KpCei6xn?=
 =?us-ascii?Q?ZQQ0XbRzWIjUAjIYSVX3+Qxj?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB5105.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 16063ec9-a71c-41af-4713-08d8f487f28c
X-MS-Exchange-CrossTenant-originalarrivaltime: 31 Mar 2021 20:59:59.9250 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: o5HjEQf90PtwGTcLgZ8CHwRVdDbMEyZe54MG9RTY0jPu1Hj8o8ZvllUSEm3QUhnMRMJnWCl46lkAE63+SPPBRbK08Zii5zBHiIOsng3EIIM=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MWHPR11MB1805
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [PATCH S57 04/14] ice: Ignore EMODE return
 for opcode 0x0605
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
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of
> Tony Nguyen
> Sent: Thursday, March 25, 2021 3:35 PM
> To: intel-wired-lan@lists.osuosl.org
> Subject: [Intel-wired-lan] [PATCH S57 04/14] ice: Ignore EMODE return for
> opcode 0x0605
> 
> From: Anirudh Venkataramanan <anirudh.venkataramanan@intel.com>
> 
> When link is owned by manageability, the driver is not allowed to fiddle with
> link. FW returns ICE_AQ_RC_EMODE if the driver attempts to do so.
> This patch adds a new function ice_set_link which abstracts the call to
> ice_aq_set_link_restart_an and provides a clean way to turn on/off link.
> 
> While making this change, I also spotted that an int variable was being used
> to hold both an ice_status return code and the Linux errno return code. This
> pattern more often than not results in the driver inadvertently returning
> ice_status back to kernel which is a major boo-boo. Clean it up.
> 
> Signed-off-by: Anirudh Venkataramanan
> <anirudh.venkataramanan@intel.com>
> ---
>  drivers/net/ethernet/intel/ice/ice_ethtool.c | 17 ++------
>  drivers/net/ethernet/intel/ice/ice_lib.c     | 37 ++++++++++++++++++
>  drivers/net/ethernet/intel/ice/ice_lib.h     |  2 +
>  drivers/net/ethernet/intel/ice/ice_main.c    | 41 ++++++++------------
>  4 files changed, 59 insertions(+), 38 deletions(-)

Tested-by: Tony Brelinski <tonyx.brelinski@intel.com> A Contingent Worker at Intel


_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
