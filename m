Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id AE6A059E4AB
	for <lists+intel-wired-lan@lfdr.de>; Tue, 23 Aug 2022 15:50:00 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id A210C819C8;
	Tue, 23 Aug 2022 13:49:58 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org A210C819C8
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1661262598;
	bh=9A1nlUeDHLPGr26vjv9P1SCzs9hKCvh0Uq1N3NEDeNY=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=4tXpSpQJqMFWN9Tx55plo3jTSHaRaCUIx7VbRk9isD9Dn+l8qmWDyhLSzZKl0A8qu
	 ceDbND7hUncjhtduZuU1O5IVF7aCQ77JYWw6+y/SLv60Rsk9Rc/lkx0moTEFJk5ngV
	 aD7tRS9CgEMKLN6qeHMqTArnViMx19S4kNbLNCBLQlqu7A0Z3HFr7mSQUITkE4UMxx
	 WTnsPJHb5CbwJWj53isKXSCuabf3pgyG6zZuhG0DFIXMCYar4sbd85GJ1eZBVQPX0n
	 dbcYVCsIeh+wIdyHNUEcgInDS2Npgz9+FZhuzee8cUm6uCyxb6TdlBFaMlt1+fPse3
	 9WS3WMl3nuLIg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id YI7C0wgPTP5K; Tue, 23 Aug 2022 13:49:57 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 8AA87813FF;
	Tue, 23 Aug 2022 13:49:57 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 8AA87813FF
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 5263E1BF384
 for <intel-wired-lan@lists.osuosl.org>; Tue, 23 Aug 2022 13:49:52 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 3878E818C9
 for <intel-wired-lan@lists.osuosl.org>; Tue, 23 Aug 2022 13:49:52 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 3878E818C9
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id h7EbdSpLq7cA for <intel-wired-lan@lists.osuosl.org>;
 Tue, 23 Aug 2022 13:49:51 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 4A7FE813FF
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 4A7FE813FF
 for <intel-wired-lan@lists.osuosl.org>; Tue, 23 Aug 2022 13:49:51 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10448"; a="276717213"
X-IronPort-AV: E=Sophos;i="5.93,257,1654585200"; d="scan'208";a="276717213"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Aug 2022 06:49:42 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.93,257,1654585200"; d="scan'208";a="585984558"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by orsmga006.jf.intel.com with ESMTP; 23 Aug 2022 06:49:42 -0700
Received: from orsmsx609.amr.corp.intel.com (10.22.229.22) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Tue, 23 Aug 2022 06:49:41 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx609.amr.corp.intel.com (10.22.229.22) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31 via Frontend Transport; Tue, 23 Aug 2022 06:49:41 -0700
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (104.47.70.102)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2375.31; Tue, 23 Aug 2022 06:49:41 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=KCZStOGuQnjTvNK+VpBAIUPVl0hrF4A6pPSAZHJib6Da/oN9UR2zzBGPcq4LBZfQ1Na+wbH1CEogcqYCIk5V/SCRyfztediviU6m7AWCVW6UlR+4nPDmU0cTlDddoPPOkU51Ox+cUO4ltrqdovCP/hGWPEfuprxzaSzBTrMpCIpHo5aKDAzKSReg/sKAw/2dA7ku9cXx+OtE0EJVrANp742uY5WU23G+N8ExTpNLHV+4DOfCK9BAhkOAJVGLi9WQAWGRJ3o6adH0lgE980OIIQfqaTihKE9xj+4btYZRbxXMkxPUrfcAdPpiceajvogW82aDjB3mp/amkYFxe+YmFw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=vW6tJohhzKxBTh65flbjFFWXm/A5GyUA0vjSjJeT0tQ=;
 b=DW7PGXw/1ohLjCwEVtagkWVW5sWwv1La09qLCAGQDDXGoBUbbeA9XZHu9TqjFP3p1iPxl9lFV4KdxG84EyKCp8OQmeVh508rkuWOrxnuKtL2cCbCn1Z3/4KD8UGxnC0TNWBRPNyWGcyz/Fe9iGK9yd/0M8crUgkq2hRy4opDSXqrt0jTCfE02eAF87rgg52C+2AuqqdOYB26CWoSISPq69PU7lqYLR2wIA70Lr+ySoD3aSv2Co9RqBVSNdmU+usyB7X46b4cuoJgnQkTbmIKqtH09CkfUyql9Yl+cIlNTbEKp5dkLHqWZOBhF5ftQ1EbJpub1SZAB/OOYiLhL40rfw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from MN2PR11MB4045.namprd11.prod.outlook.com (2603:10b6:208:135::27)
 by MN0PR11MB6280.namprd11.prod.outlook.com (2603:10b6:208:3c0::15)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5546.21; Tue, 23 Aug
 2022 13:49:40 +0000
Received: from MN2PR11MB4045.namprd11.prod.outlook.com
 ([fe80::d562:20be:3850:47a8]) by MN2PR11MB4045.namprd11.prod.outlook.com
 ([fe80::d562:20be:3850:47a8%5]) with mapi id 15.20.5546.022; Tue, 23 Aug 2022
 13:49:40 +0000
From: "Rout, ChandanX" <chandanx.rout@intel.com>
To: "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "Patynowski, PrzemyslawX" <przemyslawx.patynowski@intel.com>
Thread-Topic: [Intel-wired-lan] [PATCH net v1] ice: Fix DMA mappings leak
Thread-Index: AQHYrWqisYVrHQEbdEGbcZeW7IKFBK28jBuggAAAXnA=
Date: Tue, 23 Aug 2022 13:49:39 +0000
Message-ID: <MN2PR11MB4045923DD10F34E80267CAACEA709@MN2PR11MB4045.namprd11.prod.outlook.com>
References: <20220811100922.1540016-1-mateusz.palczewski@intel.com>
 <PH0PR11MB51448E6BF36E8FE9611634A3E2709@PH0PR11MB5144.namprd11.prod.outlook.com>
In-Reply-To: <PH0PR11MB51448E6BF36E8FE9611634A3E2709@PH0PR11MB5144.namprd11.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-version: 11.6.500.17
dlp-reaction: no-action
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 3eeff4fa-7a98-447c-484b-08da850e534f
x-ms-traffictypediagnostic: MN0PR11MB6280:EE_
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: bxqonCXSdUResg5a+Y8P22DMbi/R/fMmHD9reyzUfHmFTzajHZ/z2GZbVLLIt2rR/T/iglUjGKN1ptYrejWmA9xCrYVOUmTaLAAnFOQNwnDnd1j46Kva88D2eZCrFe4yx75If+6MqBFZHwiyszYBfUuz5+AW9HPTuTN6WekM2O3Ta2I9DRkUn0TaGuEvRq1KUMlDUFS9II6qQQb29g8tCJqwOwW7/wwjKgUGDO3/9fldlnAloUqQ9rCvB6UEhC8BeeznVFSIecRT/ZAtsDBZWZrCR18lA/GfZAVdygmjlm3au+e+F1EqhSo1msbVx1nUe87IzfJqyZWKrpAsdFkhRYJtjmYanNA9KFT0Cshltng0Uz8MjjD7ifF7sJd2i/soMJjeCKlUudQMnzEI2Bqv+8lBVDKjX0pwTOtvn0Vg+xxdnyw02Vf4TOBiFvHcNKvWBZ2jaLUOFuL3PyvCgwoMIN7Ovfvk/xEPXyVOU/iK/6TLqXueXpMlQJ8+UaOMrjDepKFmscBwkdyVuyPeyeZSoQ4d6eZ+ju8pUcBCoTwwm/LptRXxE2LhtASINnSLTdQ1NTyLVDjX0B3VhBRm5cXtZaQDa429Dw8rVFq9xtolAAxdUIzwhSXDGTbS8POyqEwKaS3yiLJko7U+4IjygZD/069M9+ozuRjq8otrcCChk6HJnSE3YdelaisXO1nDF/JWLbPwBRu6s1IqTq4+YDxpsGiSaW5HL4JWGqR+jdCfzv06wN4Sscim6KQE6B7frFKsx9cNYCk4NPr5Mrg0LPinbw==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MN2PR11MB4045.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230016)(136003)(366004)(376002)(396003)(346002)(39860400002)(26005)(86362001)(6506007)(82960400001)(71200400001)(55016003)(41300700001)(9686003)(478600001)(38100700002)(122000001)(38070700005)(83380400001)(7696005)(186003)(107886003)(8936002)(8676002)(66556008)(66446008)(64756008)(76116006)(66476007)(66946007)(6636002)(4326008)(52536014)(54906003)(2906002)(5660300002)(110136005)(316002)(33656002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?W/X9wcOInnWs1TlaeCuOaSERVgNoEoTtF7DjXizupw1Afc4SvGO7GTTmMeEI?=
 =?us-ascii?Q?QtObSCzylh9yg+UxKtufQqFNwaQ3BCEEXJnV8Wbosxb1Ze+sYVg7IABb5Bpg?=
 =?us-ascii?Q?2G+EyA6eOlWIEG4cKrr47bP08Gs45esx5BFQm+WQuzQbu6bx/ljhHl8ngEJl?=
 =?us-ascii?Q?40gVfeKs/98hDCQeSy/TanPmhFd4PLDvZwjJD+pisbvuQYRre0f+E/DRTlwm?=
 =?us-ascii?Q?ddj6PYe4T+CKFnAr66iDxMfHgcmPRyfEEu5NCGpc6btZ2E81S25abRngRVz1?=
 =?us-ascii?Q?fBnD/oQ28JRAWuQTAuVzZhDOVtQ4evocm+oH4pr8auWwkp9qHih01tQ0RUuh?=
 =?us-ascii?Q?3hMx/HfEfFBgmsFPSe1ZEs8Y8R94IXzEDefJihMTwBO+lggtMk7R2AjMxeYp?=
 =?us-ascii?Q?Pw43NkeEGfrLgYuaRXqIiMwOR1OEcoqOopwzc28HxhU1Nslu6qSmNoiK2ICf?=
 =?us-ascii?Q?AXwr0cNO25Iv/HmU+seKjkYEr80bPRAleU1z1ytEozCH/g1yLvU9cOK43uky?=
 =?us-ascii?Q?6LEbJgQ0Yl2OTKFOrX8sCP1/qyyoEd2HvAJ3+zgW/CLeR37K96Hc+dK6lCej?=
 =?us-ascii?Q?73/YXXSqNOTeeG05FhNeMUhFttk8+zrECdAoT6WHs/jo45OE55xIArqt/cTo?=
 =?us-ascii?Q?+EHxQWHCSOGxUzjAVdleYgcaCC3R8Aby4H3DfwQbrKRkKH+xAewnInDWT9AM?=
 =?us-ascii?Q?WOE3Dw6f9dlho2JXG71xaSZcDylbArlUEMQj/sgBpe1Vj/tq/8D/Wn9y0F3u?=
 =?us-ascii?Q?4HRZ/FURreUTKaMkOrAx0kPYokl7jL72aIQ9Eh3mEI0d15MaGHUsJAVAhOnw?=
 =?us-ascii?Q?dvRANm+nRaKyK9NkSeAg+XUcSW7vNhHJj1NfyRxwWTXixk1dQiaaxz5DR0md?=
 =?us-ascii?Q?gB2QapdwhnILuo9VWBNcTQnReXyTlXTpOr8xs24RMPOnpjR4gsF1vnmHR328?=
 =?us-ascii?Q?8RdO/KgX2dlH/3XWD0itJVQhugRP0hQG8CPEYDk8FVmwqwYB5qC4RAXhBLJ4?=
 =?us-ascii?Q?33DFRpB1qh6bmOyQjk85lePTPmI3/wMqIGwhDIgSc0XwB+fQfAnILbYiX6Zl?=
 =?us-ascii?Q?VQZYiET8AV4OpaPKLJ6zUaJKU9UCabdgCc+V3egHN0GWcmcbAMDUVGTS8QSq?=
 =?us-ascii?Q?pvn5BTmQNsn8mrg5CpvAATG+PHV7Qk1b2arxW8FUQVUmLPJMqX6X0G7hFh4d?=
 =?us-ascii?Q?ajxl8HAb3f16vDxm5e37idt1qcwyNjmcWMB4Nsmsjor033pULEhjooMxlgXC?=
 =?us-ascii?Q?Y8QqVe0FtIe3I9qoN3sHQx1LZ9nMs8tqltuf8rgquUVyT3sqpKIXFpVTYT1Z?=
 =?us-ascii?Q?siruMynt+qg5TqP4hubodTtw86/mtNQ6sylZYDUVQrdypkUnVP5qu7pbjd1j?=
 =?us-ascii?Q?WhXNZ42v0ru/JYTaw54m6QilA9gzDlqawIHZUmS8L72ZYJsQhx+WNlJvYm2R?=
 =?us-ascii?Q?sJFosPga7tI9OdCfWlKyY3UPsszz7AheDQ7diCmTsah8CoBi7a9yphIjbVCC?=
 =?us-ascii?Q?KNavNKnHhRXmq72TVP4UEwILvjKCZqoZvwOrv/nNZUs42GxAsDbekacTqA53?=
 =?us-ascii?Q?aT0zQVwz/fCEcudTqBsAjdSynGTPF0fmB79izjhQ?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: MN2PR11MB4045.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 3eeff4fa-7a98-447c-484b-08da850e534f
X-MS-Exchange-CrossTenant-originalarrivaltime: 23 Aug 2022 13:49:39.9462 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 1XPZw71N1kVyceAJ6kQdNMwwsVI77oUi+PBemcewdPRMby+MyYETlKZ8Gcg7Pj/ys+/HC+nVdsSWrx8nkvDlZg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN0PR11MB6280
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1661262591; x=1692798591;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=1K42v4Km4J3V0Y4tpwTvFhwrKvRXsij8w0tcgJGvU0I=;
 b=aKjC4fvme9zf33tZ0PN96YUjjAMyvwiKSoYyOdQcYgWbRFG11tMrV0yG
 xjDPLIl9pRTiRXWZevnwNSShzQoIKpaWnNjYwQBTvkjOD2HGJ/sT+Rom7
 ZtZkRIFTPFfq86wuJyjFw32zPqX8S0SQ3PEF2G/bHhWhe9wTaQ2AEGwrN
 u5+419noXPS7MFDYBR/0ryAj2wXNifExb1CT/hEqKJPAe31OYYjpDhgUy
 FELiwH7LQfNvvB62eBzeVRFlfQHXuQuvVZgSgJ8CpWsuAWT/ShZAU067I
 v5suu0+9GxvTHmtJ4S/3TAtyd3jSWcg2zsXeofKoHpdHQw5AoLf8ejN7U
 g==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=aKjC4fvm
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net v1] ice: Fix DMA mappings leak
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
Cc: "Nagraj, Shravan" <shravan.nagraj@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>



>-----Original Message-----
>From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of
>Mateusz Palczewski
>Sent: Thursday, August 11, 2022 3:39 PM
>To: intel-wired-lan@lists.osuosl.org
>Cc: Patynowski, PrzemyslawX <przemyslawx.patynowski@intel.com>
>Subject: [Intel-wired-lan] [PATCH net v1] ice: Fix DMA mappings leak
>
>From: Przemyslaw Patynowski <przemyslawx.patynowski@intel.com>
>
>Fix leak, when user changes ring parameters.
>During reallocation of RX buffers, new DMA mappings are created for those
>buffers. New buffers with different RX ring count should substitute older
>ones, but those buffers were freed in ice_vsi_cfg_rxq and reallocated again
>with ice_alloc_rx_buf. kfree on rx_buf caused leak of already mapped DMA.
>Reallocate ZC with xdp_buf struct, when BPF program loads. Reallocate back
>to rx_buf, when BPF program unloads.
>If BPF program is loaded/unloaded and XSK pools are created, reallocate RX
>queues accordingly in XDP_SETUP_XSK_POOL handler.
>
>Steps for reproduction:
>while :
>do
>	for ((i=0; i<=8160; i=i+32))
>	do
>		ethtool -G enp130s0f0 rx $i tx $i
>		sleep 0.5
>		ethtool -g enp130s0f0
>	done
>done
>
>Fixes: 617f3e1b588c ("ice: xsk: allocate separate memory for XDP SW ring")
>Signed-off-by: Przemyslaw Patynowski
><przemyslawx.patynowski@intel.com>
>Signed-off-by: Mateusz Palczewski <mateusz.palczewski@intel.com>
>---
> drivers/net/ethernet/intel/ice/ice_base.c | 17 ------
>drivers/net/ethernet/intel/ice/ice_main.c |  8 +++
>drivers/net/ethernet/intel/ice/ice_xsk.c  | 63 +++++++++++++++++++++++
>drivers/net/ethernet/intel/ice/ice_xsk.h  |  7 +++
> 4 files changed, 78 insertions(+), 17 deletions(-)

Tested-by: Chandan <chandanx.rout@intel.com> (A Contingent Worker at Intel)
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
