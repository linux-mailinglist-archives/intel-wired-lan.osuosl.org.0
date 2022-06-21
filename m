Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 60CA9552D04
	for <lists+intel-wired-lan@lfdr.de>; Tue, 21 Jun 2022 10:30:11 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 3987940B8F;
	Tue, 21 Jun 2022 08:30:09 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 3987940B8F
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1655800209;
	bh=2f8RqXpi1Fv/qsJ4zF4PUYbwWig2bx+ssXOQeI8bahI=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=LdYtkaCoBePvKUve70U7txOnrQzJaWx2urYwzwRv3Yu+aY2PYvuSJLfeKbz9pkCvY
	 uEv1OwAPcckn/SR/xoIqdT4ean5+GyxSaSt0jUACY8LGJ7BpBawgztPudcBGsCEFo7
	 X8OY+2HUldwaIJal4X4fqLtjis/agXT6EChBFsOfBGXckNBEhjL7HfReAohZT7QC2p
	 lAE+xyzAFjMqHdgxiMTlKmidsaM4sGwpDUysXZwsuWGcAACfAJSs1mzhZXDB8OMNY5
	 tjjyQxw6EAzKYKhdwA5xIFotgVPLBqOCR3LJbeZ1iUG7ibhWaUd8rL3lsXP69Jn6bl
	 N/mSJoLzVO7Og==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id YEPNAAC3sPkA; Tue, 21 Jun 2022 08:30:08 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id E17124015F;
	Tue, 21 Jun 2022 08:30:07 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org E17124015F
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 5DAF51BF5DB
 for <intel-wired-lan@lists.osuosl.org>; Tue, 21 Jun 2022 08:30:02 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 1BD144015F
 for <intel-wired-lan@lists.osuosl.org>; Tue, 21 Jun 2022 08:30:02 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 1BD144015F
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id u-O2jv8q1_Dw for <intel-wired-lan@lists.osuosl.org>;
 Tue, 21 Jun 2022 08:30:01 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 138B040142
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 138B040142
 for <intel-wired-lan@lists.osuosl.org>; Tue, 21 Jun 2022 08:30:00 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6400,9594,10384"; a="278832960"
X-IronPort-AV: E=Sophos;i="5.92,209,1650956400"; d="scan'208";a="278832960"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Jun 2022 01:29:43 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.92,209,1650956400"; d="scan'208";a="689834256"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by fmsmga002.fm.intel.com with ESMTP; 21 Jun 2022 01:29:23 -0700
Received: from orsmsx608.amr.corp.intel.com (10.22.229.21) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27; Tue, 21 Jun 2022 01:29:22 -0700
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX608.amr.corp.intel.com (10.22.229.21) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27; Tue, 21 Jun 2022 01:29:22 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27 via Frontend Transport; Tue, 21 Jun 2022 01:29:22 -0700
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (104.47.70.106)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2308.27; Tue, 21 Jun 2022 01:29:21 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=mBg0WDN+SfRVW/rc86q3Ehf20ZIbitmtjEq5LSWQjlZZXjaWD1Znrb4Z4zjEGR7pUKdvZgOHwVvFZGdxx2sARPI5Ocq7jj5b3djk0hqpLxvgNddm4T4EgtD0uX6E+sLgIvpjS01ybvKFUG4Qo7L3hi6bX22rGojDJc9vCuMSD32sbzdRfcxfi3NXX1NqqyUwiW+SkabWDil8ychwGdXp4LsqZCfJMX9FJyns8TpPy+mNFbTroaS8oBgI9uaSMvbW68uuBFR3k93h8cfXvbNR2ovEMHjDXef0HpeASoPKLRbp97lxz1HMkPw59YuBdpa1pcPcP2zROEa/jTX2d7tqSA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=mCei1RcT1YE9/YUtWS6mnmrS+ljvsHUEPKa04jlCxfw=;
 b=WQS8g9A+WiBoOdm8yIoUfTIrcC4qB8h7W8G5hrWxSlecAIUfq5bT4QsH3J2se9I2T+n9/pjZTYP/Eod70qhukVspr55/GTOfEdoqV7+P4B6vV8mUVZWlgVAsSocPyQHeXRz76gu0UcNpg9+lOLERYOalG6nfmRDCFupQLP7jPJvgm/ndDcmsW+16XJBatZBrIkciyof+0wUGS6lUNgp8ouEon45MgffvZCZYnWSHifot/lqqhrgnnfFfpe5R4QvxGgaOY0z1E617fK8HeThGgUNvOvnEMUuuZIWM4aKJRNJ/NhhqGzg5eY4j5LC//6J9DsKkUyiwQYfi9VGBDfM7sQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM8PR11MB5621.namprd11.prod.outlook.com (2603:10b6:8:38::14) by
 CY4PR11MB1495.namprd11.prod.outlook.com (2603:10b6:910:c::10) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.5353.15; Tue, 21 Jun 2022 08:29:19 +0000
Received: from DM8PR11MB5621.namprd11.prod.outlook.com
 ([fe80::f161:acaf:6be7:8087]) by DM8PR11MB5621.namprd11.prod.outlook.com
 ([fe80::f161:acaf:6be7:8087%4]) with mapi id 15.20.5353.022; Tue, 21 Jun 2022
 08:29:19 +0000
From: "Jankowski, Konrad0" <konrad0.jankowski@intel.com>
To: "Sokolowski, Jan" <jan.sokolowski@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH net v1] i40e: Fix VF's MAC Address
 change on VM
Thread-Index: AQHYexd5C9X8J1RZV0qLsJalbkMnVa1Zm6ew
Date: Tue, 21 Jun 2022 08:29:19 +0000
Message-ID: <DM8PR11MB5621CF927E5C0A76FC2C91B2ABB39@DM8PR11MB5621.namprd11.prod.outlook.com>
References: <20220608091056.394208-1-jan.sokolowski@intel.com>
In-Reply-To: <20220608091056.394208-1-jan.sokolowski@intel.com>
Accept-Language: pl-PL, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-version: 11.6.500.17
dlp-product: dlpe-windows
dlp-reaction: no-action
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: dd9365e6-8ba1-4830-8bb1-08da536022e0
x-ms-traffictypediagnostic: CY4PR11MB1495:EE_
x-microsoft-antispam-prvs: <CY4PR11MB1495E79666028451FC25AB44ABB39@CY4PR11MB1495.namprd11.prod.outlook.com>
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: HqpeIREsay41Ic3ICHbfRHRxqFszDuZIMalc60rm/48BCKhqBGaC+bVBPe6Lri3+vLAGhTGgzLj73b54VsHaM4cTGNqQLPhnUszQ+4jWeCizfhrU6Cz3z8wkxk5yOZuKjWA2/7ADO3ihzXA695Uz2UlhVVflNUxCfsYP0NfO3Y426cXBlwjwlbq12CnPDSdxeZRPbl8WMRe1Dp6DqxN30KHxIDw4gafZjxwSWUPZqCOuPJLlaKzLuE0HP+atkSTGeHhC1OBwSl2hq8JHO1kOkA6dF+hjjCVL311Oa4P9NcpUALvPO7ylGhELaLK4U3EULOFNAgc7Atrggkq3cv7xy7BxMvUkMClzADk43xT94ujjiv7BAb0fQzEjtiYDrCgQJ0JAsE2htYAVyvSqYMekJGCOFwls9ySPik8s/PtCPzB3YNVhyqT5qRHiGJ6OqJj7/757zrrr6wTgOABYzxRU13YwmtHPDplxRXulxsWlWc7VP8CrLb2hB+Q2iQXlCKuCAkusMki3/7lJWDtLM+wgIcjAiQdC6xjl59deKY1ZlX9mggBST7TDWkdAhkcDjeevdwq9LabKJFUeOC3jv5MheIHeiapSp+E7xd1DkxVsm+FVpZcS5GOWPCgs0NmoPungs4sVBisnY9faExZEc+xwpoGtWiO2mPa7Fw0qj3FSLimDZGrYRvKdTFs4+nnKqr/bfytbYdKNMPUg8qtnetAB7w==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM8PR11MB5621.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230016)(346002)(376002)(366004)(39860400002)(396003)(136003)(38070700005)(478600001)(4326008)(71200400001)(122000001)(66556008)(41300700001)(86362001)(82960400001)(8676002)(66946007)(66446008)(66476007)(52536014)(76116006)(110136005)(38100700002)(64756008)(316002)(83380400001)(6506007)(186003)(26005)(107886003)(7696005)(33656002)(9686003)(53546011)(2906002)(8936002)(55016003)(5660300002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?AMY3N4NQ1Gitpy9m0BNcGnqCSgnt2mMUKOKrVRGssyfA9ZaRqW67ynKbtuB+?=
 =?us-ascii?Q?vhQ9M5yNJbCdsbZMsedxNkoRB72SEo8cIVGJfhgZZXUBMHHNw1HgGxaNvjsY?=
 =?us-ascii?Q?U25H6gw51hOzfby0njkMJsjFSk5VfuXszGhD9xq6SsXOvjSR5kfkbiVJM5HM?=
 =?us-ascii?Q?Df+WxaZDPxkqtmLs8di+OAO1GBJ+mcnzJ3D4fuEFvm6T1K8mP379YDi808y1?=
 =?us-ascii?Q?Mhcr/Nuu+SFoneSiSQa7C6feK0ajUxYguoVrzRL+i9DK3U+32GQXIyN4Kj6D?=
 =?us-ascii?Q?1Jjaui1YjdsIdkED9gDjWvvQSiKGaP/c73q8plcus2I7xcKCYW55QDjAJyMK?=
 =?us-ascii?Q?XghcmNWOQwzzzxqgYXuwTMG/2r1hTqKAX+/4XuSfxYLWVTRFul0YoIRxRQ+W?=
 =?us-ascii?Q?al7X9qMYtm9tpBe7LfHYMX6RHhuFSQKBN31NQiJg0+jpn2KSkkSbt0V/eaAT?=
 =?us-ascii?Q?gl7rv4Mcq2VhdNBZ4EcY0XoIXyeIT5CtZqr8vt2UH3j6Yis63h/HIwUAfzd2?=
 =?us-ascii?Q?0Ziiq0ty2qRvh3N+vkg1+pVkBqPm3/IA3YP6atMFLfb1fmxOceSGHdUPS+6f?=
 =?us-ascii?Q?Z53ceyyeXxgsLzp/15cTGBkbBO61o1NnNMK/kBmwWsV0S36yenDgfoVaGHwA?=
 =?us-ascii?Q?c6/m+/Zc1XZaCB3oI2MAwdVNXLwP0jKlb0MYCKrgib44sy0AyrdpEbiEujbM?=
 =?us-ascii?Q?FjPCTQ/+SpnFLs/kwodiDdjBrg61UVeKNA1fQ+J+WKlJCfRqdgnITAgNK8FY?=
 =?us-ascii?Q?ciQstxnY2RW+hCRRESVdSw3Fp2Xk50VGmCO+jhATIgpQVTPwpTUbm98VrLHQ?=
 =?us-ascii?Q?9RCQuDHX+Ce4Mkczy2/6ENwsAJGS+SFLy+gvrukg0EHQAvLKISTs/9k1eVk/?=
 =?us-ascii?Q?zIPfklpDB5AQcJs82XYS8qJW5SDDlPYDYQs90lV8AiW6Wf5Lsppdub1FoATk?=
 =?us-ascii?Q?Fkfjda4YBIhvKKnezfOSxFzC0bzZiqC2QlZzBTcoQJ2yz6lv7CpgM1arXmY2?=
 =?us-ascii?Q?jg7vurnAqkGTLiUesQwoCu7cggrXPjSJOF9ADN24HQ45Owv991rKkhsjHhA/?=
 =?us-ascii?Q?YcxltbPf1Uxe9yz18T1e132PDZ/rfoP6VllbcBm+vElHaF6mNC9MEJytVWgz?=
 =?us-ascii?Q?yf/VHywsMmjX9UVVBoS/j7hU+PjTZU7ur2TfCN3yJCtCZGNQbk5JR2FMl092?=
 =?us-ascii?Q?DEnlimSGGjxiew8AO2YWsnXGRA2tU0vyThSUQsdNk+UAWAI/V/eCi8bzv/xi?=
 =?us-ascii?Q?dDmEolK85esbzNSC0fD3H/5+1toHhLHSmuBDJ4X7Lz2tcabi8qnnONDSFeLD?=
 =?us-ascii?Q?Wvaiz2+a7dmXG8Voz+gyqCO4r5o0zkyd4HiEj2cDx+sYimmYQwmdThFHsZB/?=
 =?us-ascii?Q?Yf+swha4+NqxLt6K7OF8AoOUgo0soIP0Ldga98nlMqs6lwGtFkxtCFd+R23L?=
 =?us-ascii?Q?OJqgZyI5QZjTHEiUUiHshJLRb+cLiwshcPPIK3FimJ+FVWGKkzjWqJm9mVGk?=
 =?us-ascii?Q?f6HLoEXgs3cvv6C1vQ+BJ1jDeD3W3mUMUbyF1+sBf7p1b5AKXOmb1si8KqQh?=
 =?us-ascii?Q?pneUTxT31mEWdyFMOYx50aEaCikyJNbNckmnC1EMlJZK2lUE5iQUK+hRqyiN?=
 =?us-ascii?Q?UW4AFMzrEyC1s51l+TuJ5tEFoGG5CWLlsVyAfWuEjQfSxbmQ5hVkbJ204nLt?=
 =?us-ascii?Q?OwUnLS3xeCCZw4UDqWz/hfCUBpSPSQxP8dwr186UtJNMK4vwZxswaCEJP5Y6?=
 =?us-ascii?Q?GAjIRsP5iE2xVzZ14a5g28gmrqSDAyQ=3D?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM8PR11MB5621.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: dd9365e6-8ba1-4830-8bb1-08da536022e0
X-MS-Exchange-CrossTenant-originalarrivaltime: 21 Jun 2022 08:29:19.3296 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: LIRIklpaAnO/iqG2VNoX5OiiWLV+syt69q2Ppg4msMcwomg7vmpjMOyldBH/xuHCjSZOlQi/5wDvB1yY6/lmOH6yujYZ45X33po584lfz9s=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY4PR11MB1495
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1655800201; x=1687336201;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=vQo0WayssOFNgqNvk7jg62xfqtdwrq+jD0j+qdx3SPI=;
 b=bb6ifLpMAUbDSpUn7GjWDj4ivP9KpF6/yYjr3irW5DLymX5Kb7FXeD56
 QJsLopGSvzmaNtgLmVuJZZ+koxJodJNtNAGOS+Rwwvcmda8tZosIHOuwi
 5fZYMjxybI3WIlbgo10a9Z9ktUu7qeFoVlM1MsN/H0vZUcKZB4Vrqmpml
 aFk1U5TMqfUZaZlaKL9qk05x5mZfS+1dTCiSCel6B96t6Nt2+fear+YsR
 hS+7QSSukEIri0kci7FQcWsxZjOPavv5JPLXrSA2pzRR3QJcD/s/wtZVV
 7HauTzw9vT78JdpldG3gnuSDWF0WkzB8ePG98nHPwFZlBXF4PmBA2X+RX
 w==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=bb6ifLpM
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net v1] i40e: Fix VF's MAC Address
 change on VM
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
Cc: "Zulinski, NorbertX" <norbertx.zulinski@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>



> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of
> Jan Sokolowski
> Sent: Wednesday, June 8, 2022 11:11 AM
> To: intel-wired-lan@lists.osuosl.org
> Cc: Zulinski, NorbertX <norbertx.zulinski@intel.com>
> Subject: [Intel-wired-lan] [PATCH net v1] i40e: Fix VF's MAC Address change
> on VM
> 
> From: Norbert Zulinski <norbertx.zulinski@intel.com>
> 
> Clear VF MAC from parent PF and remove VF filter from VSI when both
> conditions are true:
> -VIRTCHNL_VF_OFFLOAD_USO is not used
> -VM MAC was not set from PF level
> 
> It affects older version of IAVF
> and it allow them to change MAC Address on VM, newer IAVF won't change
> their behaviour.
> 
> Previously it wasn't possible to change VF's MAC Address on VM because
> there is flag on IAVF driver that won't allow to change MAC Address if this
> address is given from PF driver.
> 
> Fixes: 155f0ac2c96b ("iavf: allow permanent MAC address to change")
> Signed-off-by: Norbert Zulinski <norbertx.zulinski@intel.com>
> Signed-off-by: Jan Sokolowski <jan.sokolowski@intel.com>
> ---
>  drivers/net/ethernet/intel/i40e/i40e_virtchnl_pf.c | 4 ++++
>  1 file changed, 4 insertions(+)
> 
> diff --git a/drivers/net/ethernet/intel/i40e/i40e_virtchnl_pf.c
> b/drivers/net/ethernet/intel/i40e/i40e_virtchnl_pf.c
> index 033ea71763e3..86b0f21287dc 100644
> --- a/drivers/net/ethernet/intel/i40e/i40e_virtchnl_pf.c
> +++ b/drivers/net/ethernet/intel/i40e/i40e_virtchnl_pf.c
> @@ -2147,6 +2147,10 @@ static int i40e_vc_get_vf_resources_msg(struct

Tested-by: Konrad Jankowski <konrad0.jankowski@intel.com>
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
