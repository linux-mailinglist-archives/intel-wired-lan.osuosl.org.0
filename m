Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4E89E5631FC
	for <lists+intel-wired-lan@lfdr.de>; Fri,  1 Jul 2022 12:54:08 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id EAE9C40B6A;
	Fri,  1 Jul 2022 10:54:04 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org EAE9C40B6A
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1656672845;
	bh=UPgHFTZYFgmqAEgVioSch2/C1WmK4TFP4KeV06sjwDU=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=seR6Od6MgQrbs5IZoljIdXes2x70LrdE5LMTIzDuaKpQfm7XG78mNPGc7iL1Pnbzr
	 +Moy/3ydOx5BfMqn8G0rwbN8xYLu6QdHZWsv85/dteZUyVTbXtx6RhA//ScvRlLKzr
	 8evtRXphdENdhzh/+OW7Mnb/xpG3y9zVT9MggnCOkiSk3dqBpaTlsgwLh+M6NTq6la
	 aoeJtodetdKoaSnUDaLx7YiB/frBnnbZBQi00qeYdp3gqY2SmWuG+mLX2gM33jz2v0
	 eShG85TcAmPed/2gLDMv/iDzzOV4v1gTq6jySacu4JytSAAoDXV57NKVeBlP8q02f1
	 91KaGH0x/dfAA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id gDLqqC_bDclM; Fri,  1 Jul 2022 10:54:03 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 7720840436;
	Fri,  1 Jul 2022 10:54:03 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 7720840436
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id A11911BF267
 for <intel-wired-lan@lists.osuosl.org>; Fri,  1 Jul 2022 10:53:58 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 79DFD418AE
 for <intel-wired-lan@lists.osuosl.org>; Fri,  1 Jul 2022 10:53:58 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 79DFD418AE
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 9Etv_ICkZywJ for <intel-wired-lan@lists.osuosl.org>;
 Fri,  1 Jul 2022 10:53:57 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 57B1B41893
Received: from mga06.intel.com (mga06b.intel.com [134.134.136.31])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 57B1B41893
 for <intel-wired-lan@lists.osuosl.org>; Fri,  1 Jul 2022 10:53:57 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6400,9594,10394"; a="344309602"
X-IronPort-AV: E=Sophos;i="5.92,236,1650956400"; d="scan'208";a="344309602"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Jul 2022 03:53:56 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.92,236,1650956400"; d="scan'208";a="694473725"
Received: from orsmsx606.amr.corp.intel.com ([10.22.229.19])
 by fmsmga002.fm.intel.com with ESMTP; 01 Jul 2022 03:53:55 -0700
Received: from orsmsx603.amr.corp.intel.com (10.22.229.16) by
 ORSMSX606.amr.corp.intel.com (10.22.229.19) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27; Fri, 1 Jul 2022 03:53:55 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27 via Frontend Transport; Fri, 1 Jul 2022 03:53:55 -0700
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (104.47.58.169)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2308.27; Fri, 1 Jul 2022 03:53:54 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=h2c8TDWdp1pqKGBMrxsdoVGJ/t9N7NKBOwgkJjRHW8LQaw3mX/HZL++LBnmAnYvLBHLch/q63XE+ZQhrjDeMjEWMVVwn7fp5wSbpoL6BazDA+3vZBRSW/7qhOmxV2Sy85umRn6ashvC2gvAQcRejFJ+uWYwiCg4q5paVnoHzHvWsFfXKkOpJjx90x0x9pYvA0cVc/vbiBVqQ8Q2OFw52zXeHcvVjf2CtTrqnALpj4C5WLbLVRbtJSMo0RSXsbqQwbGBdITiXzXNb0KBMqaW0q3+giIqN1lzIRfL8B+fHHuNXppkZOInYE+h9MBOl5q63WxW9xRtu5wQHNBfXLBV0qg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=9lOLcphIZWm0Hevj7+JUplSG2h/MvyhRA1B2hoLRs9M=;
 b=dO1RNIsNAhrx5dGHrvnZ2YoJ1FzxrZy0AHoum+covF1HC+TGbYebvxJ5WQiUek3khxfrGO3EYOr6Ct1RAjvF5Mj2C2irEq9Z57Ot09yiIeXxlRQ9IL5O3R7Ebcef2ofeD3NzKm8FiZaWRMEV18mMiQn63SdfkFNyOJ8wnqsjaRCRmADqA5v6JdlPgjvJL4jkkrZc6GsOO2TludBFrX2uI7akctWOiEQ8V8FXiO2OiyZBlWmXLHBqhS3FSaUmkr5jEl+Wb/d873HVWyxgprgUlO1591nhxrWrGHQqt1TMJPj9GX3pynLRwRtjE2qypYtW3vtzxrsj/GkVRY2v4AfPAg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from MW4PR11MB5776.namprd11.prod.outlook.com (2603:10b6:303:183::9)
 by BL1PR11MB6004.namprd11.prod.outlook.com (2603:10b6:208:390::13)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5395.14; Fri, 1 Jul
 2022 10:53:51 +0000
Received: from MW4PR11MB5776.namprd11.prod.outlook.com
 ([fe80::9eb:1dcb:baf2:a46c]) by MW4PR11MB5776.namprd11.prod.outlook.com
 ([fe80::9eb:1dcb:baf2:a46c%3]) with mapi id 15.20.5395.014; Fri, 1 Jul 2022
 10:53:51 +0000
From: "Drewek, Wojciech" <wojciech.drewek@intel.com>
To: Guillaume Nault <gnault@redhat.com>, Marcin Szycik
 <marcin.szycik@linux.intel.com>
Thread-Topic: [RFC PATCH net-next v3 1/4] flow_dissector: Add PPPoE dissectors
Thread-Index: AQHYi8Yz71onwe1ZJkqLrfIIHXHZd61olZEAgAC2kwA=
Date: Fri, 1 Jul 2022 10:53:51 +0000
Message-ID: <MW4PR11MB5776F1388A0EFB83990120CDFDBD9@MW4PR11MB5776.namprd11.prod.outlook.com>
References: <20220629143859.209028-1-marcin.szycik@linux.intel.com>
 <20220629143859.209028-2-marcin.szycik@linux.intel.com>
 <20220630231016.GA392@debian.home>
In-Reply-To: <20220630231016.GA392@debian.home>
Accept-Language: pl-PL, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-version: 11.6.500.17
dlp-product: dlpe-windows
dlp-reaction: no-action
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 0db3569b-0706-4242-168c-08da5b4ffbc3
x-ms-traffictypediagnostic: BL1PR11MB6004:EE_
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: mJgKeail9UXBRvMwXqh9bay1AnT1FybNeweOPc37KN0O6MU0Uj9UmyUjJu4mIKWNnv+qOKAOe04wq4+CuQZh1CRHAo9ToXC1mteG5p3I/AeT7qO6s8a5ILNdun/kb2JH9QH4sR0Q/rCwMXPHcdLCupiAFpnpRJ2S90a5jhap9m3HGDJnTtKYonLfeiX1XamzQkqrRhe2MZ8AGcqfJBIqcmTdLlFl1ym/4ITUxWT/CULaD/m+5sIlimfCGfbBndBIKFbkQzZpKlxdmH8XyFUvtWjez3yawQq4sV8atDCs1gidFtd4Cb3cHg55wwYsvvZshZlGH7SWaGX4IVNWSa1U4sVRtcLgej154t0kTyZBNnF24FMeadBfSK7GX0qkAqIo0j9nd2PcPxgjprsjDVf/9NtxawslBMUSwWFV1NaUm/GwpYguLHI029yI0cwGKoGc+Juva6pX623VoHswHaAR0iuonUxXQGCC6w3sK6SckBP+GUx0eZUcpbxTqjraVA+cz1M87PTxhCWJDND8DNCbVgXNOZyPVHjw6vw8RfyivG6GVkcp3fUBk+capjJMZbTFCBTAalWhj5jqHfa4ODBGZAeVs93St1GC8yzq1InuRTqlM02K792vclmBDnevJ/yED1ZBPymUJZU3Ou2B6qRqwyxnKrsm0eslj+48FEhIDJUoxYaYT6msZwUMiougLCs358aXLlrj4NO6xryJkXVVAQ9SSh6NHVfNt75OjiGDmldHOUxlqGoOUEqbx4XCKrFgCyZak2UQqWmXvIbUEZ7qSdrEOWOnJqKoqKVqu2rMA20Nn4W3ZIMd2EMRNGEbnPTA
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MW4PR11MB5776.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230016)(346002)(376002)(366004)(396003)(39860400002)(136003)(66556008)(7416002)(8676002)(83380400001)(71200400001)(66476007)(122000001)(26005)(9686003)(66946007)(4326008)(64756008)(478600001)(41300700001)(5660300002)(86362001)(38070700005)(53546011)(82960400001)(2906002)(55016003)(66446008)(76116006)(33656002)(6506007)(8936002)(316002)(186003)(66574015)(7696005)(54906003)(38100700002)(110136005)(52536014);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?iso-8859-2?Q?AB6m7melcID8xlRnRQtF5ga1VyUPhb2GL6lKO1KfZ2E+KQPlTff3yjzh5z?=
 =?iso-8859-2?Q?coAoA+/6YPFWM1s0UFxmCJ3uhoJKFj/roTRoOA76HTWA6HyakVlNysqF1e?=
 =?iso-8859-2?Q?J+KgmIqcda2EMOsDY0qbiIU1qqqmSWeXCsbqlOkaO96bt/0ejvJG8HH4RD?=
 =?iso-8859-2?Q?W6On7z4vNedZ+tJxIywaD3+BVI0LHvwBALEL6pxkZqwXURiMQiIgtNarbM?=
 =?iso-8859-2?Q?VwnxS8OoVDAnRWvG53MjLM5CBAyGsOHRUkbsII/GSmj3JFa61R48XYeIwX?=
 =?iso-8859-2?Q?qX73aI7GWd8CYgIcELY6UyJRRD1Ptv3BLMjrVyNOxjPcUSg/RF4ETcFgQV?=
 =?iso-8859-2?Q?svI6D7RR+ZqDLWp7apPydOQGS9g9z/ahqAs9G2LYl+go9VdFgsyszdoS6R?=
 =?iso-8859-2?Q?Hev1kbq1tOMbLb57SLls1n9ZNKrq/1EaLn+Xt2O8eT57Ubu3jVW7vUx8wo?=
 =?iso-8859-2?Q?mxgCQpe/8W7bUpHRrZRHDWS+qHeABO6Vl8ddBXF70/QAzIhNybo0RHh5DC?=
 =?iso-8859-2?Q?6DOyOUXlFii6QRzUkk80bLEJE1iKOSib0qWc8rVBPop6N8x9xHBJs3yRM+?=
 =?iso-8859-2?Q?LdgtANbIzGegE+hOpVuaHu67xlND34scHSPTcA2GP5yEuTMYrwaDU1Qibu?=
 =?iso-8859-2?Q?7YXmDT5ltPhliWMuEZLKKu6oKY3JWkQfzmz5y5XXx0MFx8uk1MG5LKkbsA?=
 =?iso-8859-2?Q?ZcwsPvnw8/5F5QohsLlMZbsqVzIYAlOjZ4bDKyDAhtOr5YrE5TJwnh/XWz?=
 =?iso-8859-2?Q?WkR/LMwefahzdfbDzRrR6/CqLzGNDw71ec/A7f1vB8j6xRYrYdq0rDZkdt?=
 =?iso-8859-2?Q?oWSsDDhf3rBdtfj15JNZzUM4Au/j1jsWt3loaeca1gyRGgWnAlvX/LEyB+?=
 =?iso-8859-2?Q?CWgTIL4Q00Q1CDcakjrftQEI8Yau/oTNt6cqbX2N7nueaMMuRoje7CTc2x?=
 =?iso-8859-2?Q?m4M5M46/kyj+2NfQBbOS0aty0c/eoQUu5EyK2ZAnvPG7BrXWzw8p7n+PHg?=
 =?iso-8859-2?Q?EhGhxHdlwo5bIKMTzHNj4J93K5+HEPIBjXTHw26JclKV6lnF+s/ojRpxDo?=
 =?iso-8859-2?Q?IDG+AJ0JFfkF69GR0m0x+1lAfyho9X64T3VlKmIwns+TDxilf4cCo8RuGq?=
 =?iso-8859-2?Q?LCCCEvxVxptsGChXgeGQvyJHv17z+P4lVFJnDz/7QWQ+4Vnv0QUedZDpv1?=
 =?iso-8859-2?Q?CWY/diUS7cRleKAtRhOZ5TqzQOpO0Wp3jcszPKhcY86DdCrnWfM7mhPULQ?=
 =?iso-8859-2?Q?a7krdKZJJ2LZuc6VMvmxbXBdhThQwSycbLjZvsxXBLpGp6PybVa5+vS5bV?=
 =?iso-8859-2?Q?Zoo+QUXXw8bFnW7nW31C3qNxiIL81YLCcV33bd90px06sZvbsqC4z/qtK4?=
 =?iso-8859-2?Q?pdC/PNY/m7NcJ6Ity5SRiHQSVaIW9SlYNH7QqiQ8psoxAOyvrz7xdosBtl?=
 =?iso-8859-2?Q?a0hbrJQkydA56q7C7b7rl9Bun9zsWBi2KxMqRH/LpFg9TqzUpbKBxLH2+1?=
 =?iso-8859-2?Q?L9nPdO7CgOTPlLWkk95kZ7FPqc3Bot6SO9HxlPsePGsX8WyMs08un8oNjU?=
 =?iso-8859-2?Q?cRWvBJeyUd0MIpDKFEmLPdnLyxeltcp0wmuexzxJKv9BJzwf75S78EyW7O?=
 =?iso-8859-2?Q?mbAnvTHmrGQRk5s3/QqF0fcMJOc1TK4BMk?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: MW4PR11MB5776.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 0db3569b-0706-4242-168c-08da5b4ffbc3
X-MS-Exchange-CrossTenant-originalarrivaltime: 01 Jul 2022 10:53:51.0600 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: S9f+9wl24OHGQ0/cvJ1KWEbp7EHsNFxQSuZl9vCvJbjkNOQA0nCfbTySkpdqWJQWD2f5n1+ag/3EsoilOsgne1XIcfmAE1vPB65N8h5NfT4=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BL1PR11MB6004
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1656672837; x=1688208837;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=34jx3TprTg2TCXPl4HcWDgvd14UH3vd6/XKmVOuB3z4=;
 b=lr8jg7mkeR9VF32+Kw5f0I8hv8QOJaOP5YyqqaiRM/z530AVA1IIrgy9
 Czg9bb1pdVOWLzP1/qVJk958yEpOZK8oh6onS8CIwO9e9Xc2c7Gcu5T+8
 iQf6HaPyV0CmTbexzrmb/9cd0RXtDFeE9B7yhYgHFAzEvuWdrb60DQcPN
 9m5iCR7Fj/zIIoRmKEbYyCFJ7BNNdcCW94OWdnYENxrO+NvFVCiGZK68u
 vxlTkKSaEKYDSUgWu4F1zYlaEKgfCgrCv8kcU6wgcVDJnQf9KU/ktXO7G
 ElV0+KTp5/9mf43qHgGQA41/V2VY8Wzx6kWIJVGN34ypalRlKVxA6m0se
 Q==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=lr8jg7mk
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [RFC PATCH net-next v3 1/4] flow_dissector:
 Add PPPoE dissectors
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
Cc: "simon.horman@corigine.com" <simon.horman@corigine.com>,
 "kurt@linutronix.de" <kurt@linutronix.de>,
 "paulb@nvidia.com" <paulb@nvidia.com>,
 "edumazet@google.com" <edumazet@google.com>,
 "boris.sukholitko@broadcom.com" <boris.sukholitko@broadcom.com>,
 "paulus@samba.org" <paulus@samba.org>, "Brandeburg,
 Jesse" <jesse.brandeburg@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "kuba@kernel.org" <kuba@kernel.org>,
 "zhangkaiheb@126.com" <zhangkaiheb@126.com>,
 "pablo@netfilter.org" <pablo@netfilter.org>,
 "baowen.zheng@corigine.com" <baowen.zheng@corigine.com>,
 "jiri@resnulli.us" <jiri@resnulli.us>,
 "komachi.yoshiki@gmail.com" <komachi.yoshiki@gmail.com>,
 "jhs@mojatatu.com" <jhs@mojatatu.com>,
 "mostrows@earthlink.net" <mostrows@earthlink.net>,
 "xiyou.wangcong@gmail.com" <xiyou.wangcong@gmail.com>,
 "pabeni@redhat.com" <pabeni@redhat.com>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 "gustavoars@kernel.org" <gustavoars@kernel.org>,
 "davem@davemloft.net" <davem@davemloft.net>
Content-Type: text/plain; charset="iso-8859-2"
Content-Transfer-Encoding: quoted-printable
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Hi Guillaume,

Thanks for the review!

> -----Original Message-----
> From: Guillaume Nault <gnault@redhat.com>
> Sent: pi=B1tek, 1 lipca 2022 01:10
> To: Marcin Szycik <marcin.szycik@linux.intel.com>
> Cc: netdev@vger.kernel.org; Nguyen, Anthony L <anthony.l.nguyen@intel.com=
>; davem@davemloft.net;
> xiyou.wangcong@gmail.com; Brandeburg, Jesse <jesse.brandeburg@intel.com>;=
 gustavoars@kernel.org;
> baowen.zheng@corigine.com; boris.sukholitko@broadcom.com; edumazet@google=
.com; kuba@kernel.org; jhs@mojatatu.com;
> jiri@resnulli.us; kurt@linutronix.de; pablo@netfilter.org; pabeni@redhat.=
com; paulb@nvidia.com; simon.horman@corigine.com;
> komachi.yoshiki@gmail.com; zhangkaiheb@126.com; intel-wired-lan@lists.osu=
osl.org; michal.swiatkowski@linux.intel.com; Drewek,
> Wojciech <wojciech.drewek@intel.com>; Lobakin, Alexandr <alexandr.lobakin=
@intel.com>; mostrows@earthlink.net;
> paulus@samba.org
> Subject: Re: [RFC PATCH net-next v3 1/4] flow_dissector: Add PPPoE dissec=
tors
> =

> On Wed, Jun 29, 2022 at 04:38:56PM +0200, Marcin Szycik wrote:
> > From: Wojciech Drewek <wojciech.drewek@intel.com>
> >
> > Allow to dissect PPPoE specific fields which are:
> > - session ID (16 bits)
> > - ppp protocol (16 bits)
> >
> > The goal is to make the following TC command possible:
> >
> >   # tc filter add dev ens6f0 ingress prio 1 protocol ppp_ses \
> >       flower \
> >         pppoe_sid 12 \
> >         ppp_proto ip \
> >       action drop
> >
> > Note that only PPPoE Session is supported.
> >
> > Signed-off-by: Wojciech Drewek <wojciech.drewek@intel.com>
> > ---
> > v3: revert byte order changes in is_ppp_proto_supported from previous
> >     version, add kernel-doc for is_ppp_proto_supported
> > v2: use ntohs instead of htons in is_ppp_proto_supported
> >
> >  include/net/flow_dissector.h | 11 ++++++++
> >  net/core/flow_dissector.c    | 55 ++++++++++++++++++++++++++++++++----
> >  2 files changed, 60 insertions(+), 6 deletions(-)
> >
> > diff --git a/include/net/flow_dissector.h b/include/net/flow_dissector.h
> > index a4c6057c7097..8ff40c7c3f1c 100644
> > --- a/include/net/flow_dissector.h
> > +++ b/include/net/flow_dissector.h
> > @@ -261,6 +261,16 @@ struct flow_dissector_key_num_of_vlans {
> >  	u8 num_of_vlans;
> >  };
> >
> > +/**
> > + * struct flow_dissector_key_pppoe:
> > + * @session_id: pppoe session id
> > + * @ppp_proto: ppp protocol
> > + */
> > +struct flow_dissector_key_pppoe {
> > +	u16 session_id;
> > +	__be16 ppp_proto;
> > +};
> =

> Why isn't session_id __be16 too?

I've got general impression that storing protocols values
in big endian is a standard through out the code and other values like vlan=
_id
don't have to be stored in big endian, but maybe it's just my illusion :)
I can change that in v3.

> =

> Also, I'm not sure I like mixing the PPPoE session ID and PPP protocol
> fields in the same structure: they're part of two different protocols.
> However, I can't anticipate any technical problem in doing so, and I
> guess there's no easy way to let the flow dissector parse the PPP
> header independently. So well, maybe we don't have choice...

We are not planning to match on other fields from PPP protocol so
separate structure just for it is not needed I guess.

> =

> >  enum flow_dissector_key_id {
> >  	FLOW_DISSECTOR_KEY_CONTROL, /* struct flow_dissector_key_control */
> >  	FLOW_DISSECTOR_KEY_BASIC, /* struct flow_dissector_key_basic */
> > @@ -291,6 +301,7 @@ enum flow_dissector_key_id {
> >  	FLOW_DISSECTOR_KEY_CT, /* struct flow_dissector_key_ct */
> >  	FLOW_DISSECTOR_KEY_HASH, /* struct flow_dissector_key_hash */
> >  	FLOW_DISSECTOR_KEY_NUM_OF_VLANS, /* struct flow_dissector_key_num_of_=
vlans */
> > +	FLOW_DISSECTOR_KEY_PPPOE,  /* struct flow_dissector_key_pppoe */
> >
> >  	FLOW_DISSECTOR_KEY_MAX,
> >  };
> > diff --git a/net/core/flow_dissector.c b/net/core/flow_dissector.c
> > index 6aee04f75e3e..42393af477a2 100644
> > --- a/net/core/flow_dissector.c
> > +++ b/net/core/flow_dissector.c
> > @@ -895,6 +895,39 @@ bool bpf_flow_dissect(struct bpf_prog *prog, struc=
t bpf_flow_dissector *ctx,
> >  	return result =3D=3D BPF_OK;
> >  }
> >
> > +/**
> > + * is_ppp_proto_supported - checks if inner PPP protocol should be dis=
sected
> > + * @proto: protocol type (PPP proto field)
> > + */
> > +static bool is_ppp_proto_supported(__be16 proto)
> > +{
> > +	switch (proto) {
> > +	case htons(PPP_AT):
> > +	case htons(PPP_IPX):
> > +	case htons(PPP_VJC_COMP):
> > +	case htons(PPP_VJC_UNCOMP):
> > +	case htons(PPP_MP):
> > +	case htons(PPP_COMPFRAG):
> > +	case htons(PPP_COMP):
> > +	case htons(PPP_MPLS_UC):
> > +	case htons(PPP_MPLS_MC):
> > +	case htons(PPP_IPCP):
> > +	case htons(PPP_ATCP):
> > +	case htons(PPP_IPXCP):
> > +	case htons(PPP_IPV6CP):
> > +	case htons(PPP_CCPFRAG):
> > +	case htons(PPP_MPLSCP):
> > +	case htons(PPP_LCP):
> > +	case htons(PPP_PAP):
> > +	case htons(PPP_LQR):
> > +	case htons(PPP_CHAP):
> > +	case htons(PPP_CBCP):
> > +		return true;
> > +	default:
> > +		return false;
> > +	}
> > +}
> > +
> >  /**
> >   * __skb_flow_dissect - extract the flow_keys struct and return it
> >   * @net: associated network namespace, derived from @skb if NULL
> > @@ -1221,19 +1254,29 @@ bool __skb_flow_dissect(const struct net *net,
> >  		}
> >
> >  		nhoff +=3D PPPOE_SES_HLEN;
> > -		switch (hdr->proto) {
> > -		case htons(PPP_IP):
> > +		if (hdr->proto =3D=3D htons(PPP_IP)) {
> >  			proto =3D htons(ETH_P_IP);
> >  			fdret =3D FLOW_DISSECT_RET_PROTO_AGAIN;
> > -			break;
> > -		case htons(PPP_IPV6):
> > +		} else if (hdr->proto =3D=3D htons(PPP_IPV6)) {
> >  			proto =3D htons(ETH_P_IPV6);
> >  			fdret =3D FLOW_DISSECT_RET_PROTO_AGAIN;
> > -			break;
> =

> 1)
> Looks like you could easily handle MPLS too. Did you skip it on
> purpose? (not enough users to justify writing and maintaining
> the code?).
> =

> I don't mean MPLS has to be supported; I'd just like to know if it was
> considered.

Yes, exactly as you write, not enough users, but I can see thet MPLS should =

be easy to implement so I'll include it in the next version.

> =

> 2)
> Also this whole test is a bit weak: the version, type and code fields
> must have precise values for the PPPoE Session packet to be valid.
> If either version or type is different than 1, then the packet
> advertises a new version of the protocol that we don't know how to parse
> (or most probably the packet was forged or corrupted). A non-zero code
> is also invalid.
> =

> I know the code was already like this before your patch, but it's
> probably better to fix it before implementing hardware offload.

Sure, I'll add packet validation in next version.

> =

> 3)
> Finally, the PPP protocol could be compressed and stored in 1 byte
> instead of 2. This case wasn't handled before your patch, but I think
> that should be fixed too before implementing hardware offload.

We faced that issue but we couldn't find out what indicates
when ppp protocol is stored in 1 byte instead of 2.

> =

> > -		default:
> > +		} else if (is_ppp_proto_supported(hdr->proto)) {
> > +			fdret =3D FLOW_DISSECT_RET_OUT_GOOD;
> > +		} else {
> >  			fdret =3D FLOW_DISSECT_RET_OUT_BAD;
> >  			break;
> >  		}
> > +
> > +		if (dissector_uses_key(flow_dissector,
> > +				       FLOW_DISSECTOR_KEY_PPPOE)) {
> > +			struct flow_dissector_key_pppoe *key_pppoe;
> > +
> > +			key_pppoe =3D skb_flow_dissector_target(flow_dissector,
> > +							      FLOW_DISSECTOR_KEY_PPPOE,
> > +							      target_container);
> > +			key_pppoe->session_id =3D ntohs(hdr->hdr.sid);
> > +			key_pppoe->ppp_proto =3D hdr->proto;
> > +		}
> >  		break;
> >  	}
> >  	case htons(ETH_P_TIPC): {
> > --
> > 2.35.1
> >

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
