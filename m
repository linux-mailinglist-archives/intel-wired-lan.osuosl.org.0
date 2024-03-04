Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3F30A86FC33
	for <lists+intel-wired-lan@lfdr.de>; Mon,  4 Mar 2024 09:47:35 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 27CF040B6D;
	Mon,  4 Mar 2024 08:47:33 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Fyqgr0_jLqWc; Mon,  4 Mar 2024 08:47:32 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 10CE240B6F
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1709542052;
	bh=3HIjjQ6o31teuCT5+fd3jsE3zT1FtQ4ikBYhAVfcyNU=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=b5oi8k/NghLxK5T5proUu3DlE6G3ynGnmcL4wTXw7/SugR8Uzcbs6hrNMOzLi8kGb
	 +ls47m8ArL9a7sLqzhpKEvW/086PvJ6Dyvw7IcDRF+Kk2SF6OVCYiLAaFaAcrB4zNu
	 UhUX2Am8dhMXnQp96+ygM2c1NL9mQIK9CWpw9kbof30inh2p+4doDLbsKuP7XvRK74
	 EeecpQ1PmU8LMMgdGkB4DOd9qx/NoE4iTJv5FYUZyMhLRy/T05pJRqqprXK51X4DLk
	 Yoo+4mMWaTl0pmPuR8IPTGfilcV0bNTgKmQLtdXVkPVHl7SLD3uA88v6c4zOELrVBi
	 j1WvSVGwFl4vg==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 10CE240B6F;
	Mon,  4 Mar 2024 08:47:32 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 178DE1BF580
 for <intel-wired-lan@lists.osuosl.org>; Mon,  4 Mar 2024 08:47:29 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 03E08407F8
 for <intel-wired-lan@lists.osuosl.org>; Mon,  4 Mar 2024 08:47:29 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id j7tB1e1rYMKe for <intel-wired-lan@lists.osuosl.org>;
 Mon,  4 Mar 2024 08:47:28 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.9;
 helo=mgamail.intel.com; envelope-from=himasekharx.reddy.pucha@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 359B9407F7
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 359B9407F7
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 359B9407F7
 for <intel-wired-lan@lists.osuosl.org>; Mon,  4 Mar 2024 08:47:27 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,11002"; a="26485395"
X-IronPort-AV: E=Sophos;i="6.06,203,1705392000"; d="scan'208";a="26485395"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Mar 2024 00:46:59 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.06,203,1705392000"; 
   d="scan'208";a="9495003"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orviesa008.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 04 Mar 2024 00:46:59 -0800
Received: from orsmsx602.amr.corp.intel.com (10.22.229.15) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Mon, 4 Mar 2024 00:46:58 -0800
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Mon, 4 Mar 2024 00:46:58 -0800
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (104.47.56.169)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Mon, 4 Mar 2024 00:46:57 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Dfcx1XEr2aQRmV3nM/1SwSoWtvsoD5s6xT7jZXMzsQaVQrue8ywK2JCSJkecwCe+4NfP7EkvsSlEjZo7ljqdVb4goXd+0CFmE5AsyDP/vxG3DUWUess8nj0lSZwONDbnm9L7Rs5kqBlC4CUkdw5MgbvuocYiFGJ1WFx62ySDm5ABjcvQ2Ud5y2t9mMyqt5baEhrZva14fzJLlgnfA/xZnZiY1uHCHnYmibG19XMr+BOXfkW65kdxSUKdUTLd7+aSMddzKPLV8NIbluUCo1gaX4pzMwGogH6Wja6IIKPIYjipibtA286HzIXm3qeAH0uS726MBSFmYyYBpthOiiEjRw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=3HIjjQ6o31teuCT5+fd3jsE3zT1FtQ4ikBYhAVfcyNU=;
 b=TMqwBmKW18WNMpgv8BVim05XNOKOCKlIYdy44ek7DFxRNm2KuZSauiBF+vMeDoVTX+zcbr32TDl4v6iDU1cMP/YBBgL19MfF4gZ44jO8DHmeoE/MWatk50a7L5yAVDa3wKEEHJEzec+SnTKIpVyhmPFTDvYfx4JgiPlZ1C3sxUDmFLxEQjaZIy0NflMvehV38gx8LDNAfbYjspg0S5ABrHN3kRYX8ce+mPjPzhB+3MkoFcDHvsdv4SkV43ZLV5WS4H8eZZ74qwSgLCDZuP0FPLCmW+Zc2Nb+J9dvr2NEj70T9jfBXd7hnWKwoJOJzvU1/5x6h+vZJZNAR6G4ixHiag==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CYYPR11MB8429.namprd11.prod.outlook.com (2603:10b6:930:c2::15)
 by BL1PR11MB5954.namprd11.prod.outlook.com (2603:10b6:208:385::16)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7362.23; Mon, 4 Mar
 2024 08:46:55 +0000
Received: from CYYPR11MB8429.namprd11.prod.outlook.com
 ([fe80::4434:a739:7bae:39a9]) by CYYPR11MB8429.namprd11.prod.outlook.com
 ([fe80::4434:a739:7bae:39a9%2]) with mapi id 15.20.7362.019; Mon, 4 Mar 2024
 08:46:55 +0000
From: "Pucha, HimasekharX Reddy" <himasekharx.reddy.pucha@intel.com>
To: Alexey Kodanev <aleksei.kodanev@bell-sw.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH iwl-next 2/2] i40e: remove unnecessary
 qv_info ptr NULL checks
Thread-Index: AQHaaNZMm3dmJJAf7ki6ZKVXkZoj0LEnTwfA
Date: Mon, 4 Mar 2024 08:46:55 +0000
Message-ID: <CYYPR11MB8429A8E3D332F24EEE00B659BD232@CYYPR11MB8429.namprd11.prod.outlook.com>
References: <20240226132103.69122-1-aleksei.kodanev@bell-sw.com>
 <20240226132103.69122-2-aleksei.kodanev@bell-sw.com>
In-Reply-To: <20240226132103.69122-2-aleksei.kodanev@bell-sw.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: CYYPR11MB8429:EE_|BL1PR11MB5954:EE_
x-ms-office365-filtering-correlation-id: 89efdb19-95c1-4d27-e676-08dc3c27a54c
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: Mr4CtjVNSUrSI1KABdHsisrLVIKu+5x1LW6kTExdNCGvx2pUYF4B8xLdgdE6goN/BDfsKUDH9xrrTquQkgYpfS8dnDlIiOZfHXoLivMSyTUlvVM2nwn0KNUBRR2IW+x7LE1sJIu2ht7mtbfuUaNeHn6I4V50fb181uB/WF7aDIEpaV5Qu+pG5eCcctCD0D7rUTwfR861SmRwQsnE0GOs0K0v0+jnZ/0QT5ozQYvjK22XzUoeZmPpfRaTTJv4yu9tnPV1DRuNdsI2xdAGF4kb+4CtobIX8pGxKk5Qz+CIKJCZebjYti8pb9h1kCRv5kaNmALA7Fpv3AA9YS2mVTog1WG+NyvLPmQ8nFeJ35oHz85BkyQrf/pLpcPBH1SrQsL9lU8Zu7JmbgrsNOz5JtvVKwkllu4XNwgQXnKYEkA3rgMIOTeYVZjnnWUEvWAejiHv3zEx06kJQX4Ja22gpV0Bm2MlkiwFDoMwKwQOtzY4/Q8sy1d2eeaLaQSwtpaPQvxzCDM5WfgkcGsk1megLMT612KyAd6ckRQ+gbwmS1DmkXy9vFtCIdbRCsfnJ78zhFDssx6jgkcn/G7ENyPFiBYwjjndauge78lScOhdFzR/KxPcp8P7XO1KpC3z9XVsnuwTK3RpldAxoDvLM3iiLFeMYBiafnDuOzXv/a6WsrL6fLcNtn6lsrPkwdKrrbXj2M0UHQyEQ2nd6W3CBjl692gMPpfpBRAohvoVnHAUUoMyMVE=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CYYPR11MB8429.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(376005)(38070700009); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?HzYp11ZgbPzFsHvbUwNxEolI5xlAlAoXwkcdXMwFbzexztmMuCm+t6SnkCfl?=
 =?us-ascii?Q?ZPN5t7j9pZkdxMsbHOv4ATDxqcIyL59Db5HCxZVrY9ITfB3wGjz7C1SROkSd?=
 =?us-ascii?Q?070aTRLWMyOU8TK0uAkmiey9/vJpclq8v9FEsbm7BlL5lbB+qS65SO2UjPqN?=
 =?us-ascii?Q?+rjvPyn+QJUjd6xOKNjxi1Q3paHjXIG2pALO+Nv/EQEwAGIt1TNXJdMIWwgG?=
 =?us-ascii?Q?ulPetGJ40USe+1s/ZIfkz93tz9sdoi7DRbfoM29leqgM1mYS/KSBr2jiL+9g?=
 =?us-ascii?Q?ld2CgXaVBa1eGRvr7Gyg64rNUcnwhdxifSqDszdyi1ogGiNAN7/uJWs+pbPJ?=
 =?us-ascii?Q?Raq2wOrqFtSTRov33uFryXgdEfZA0IWufFv0wRGs5/lFUd5ioNJXzD/FCpb4?=
 =?us-ascii?Q?JpFMzIhPldLIrfJzownIJ/S/xav2A1DmvakELAPYuFlqbqBwJYl+g+975qEv?=
 =?us-ascii?Q?kNMhNUJjv5kRNTtjduYXwUGiuD4VNBxc4OAvjPdX+V+/T60ygFfW6ZvLywqA?=
 =?us-ascii?Q?Swu1YIZ/8UTilmKlAYWAnKrKJEtdiOrGVmdhrpswVA7hRq7TLtiJML8chTrx?=
 =?us-ascii?Q?riaHwNH81JS8XFUX6ZKkc1NiXtzOCTmYbELHij+5eLrzHQcL0XlWAOQ1dMQm?=
 =?us-ascii?Q?Y0IwhnFu8YHvNbNI1DBWPvyoUoarGsgXPpIIj/Xa02VvQRzjdEoZBCIzSAjx?=
 =?us-ascii?Q?WGbGz+1PqcR+/do+Lao7SLI2qpoQzsgM9mkIv0YT2P8zBrwR+Zbxg3+c4ooa?=
 =?us-ascii?Q?5SvX7YEGidlMPMIE1nRl8Yade7u/IDdifxh3at+aqXU370DWWV4pL9zuRkCN?=
 =?us-ascii?Q?SHe/Q1BiDdwQSMARruysYrFnCUNXkH6qyhBDiT5hVcXZpZfM+oWbmzmS5J69?=
 =?us-ascii?Q?cNiLw0Kh2m9RrrA31ZgZNPQgpI/+Byev8wg39F0gxcEGOmDv9pbXD6sQaZj8?=
 =?us-ascii?Q?91gipbSiyR57XG5yVq7dy/eo/y6ZrFBHnqpI7f5gahKmj0Hoa7ohkpLdVhEV?=
 =?us-ascii?Q?1Cj7p9+sP0gJ3KC8cLBoyu6Ld2N2eDWGZK7VJysxr29x5S70DiOyAYQWueMH?=
 =?us-ascii?Q?C5cfLFfx0ygQcqcs5JbbhG9zdDouPAHvHb4grSxcN0zJrHiDY8afm2kbatRt?=
 =?us-ascii?Q?1v1ClHZ3mqpak7Fv1PATpx9PQ6m9zpIAJFS5I30TSCcZOpNucbLt2FJR9ILl?=
 =?us-ascii?Q?BtAdT4y+TpEql9+M0FjfEfT2tkvKtTcDmhPVpFa7A+Hch5kZ6A82F0v8wY0w?=
 =?us-ascii?Q?Q6jkvH4FKInHT3wPwixL9Rpz693HYKHmUIjQQhA7mld/GkY95/g18pF3DbhC?=
 =?us-ascii?Q?Abq8/3AlYkSCvPdAw9ykqfl+udbtgDz/K+4xLiYQRnUt1rN68lCqiFkEhInn?=
 =?us-ascii?Q?JQqHGYsbz2lv34cuA5McQXe/khGLqCZKVDsLyZ2H9boU6Xb1QUtrmJtqVstC?=
 =?us-ascii?Q?8zlXr37rBvjyyzXfjZCgI7r0SvDEewMH2h2er2fm8kuiAhFiPWufcOEOmXFV?=
 =?us-ascii?Q?VfHOyAKxA3CmOaC6TSl1Q0WiTsOgshW3W3mePHonEh5YmrkiqI69RbZ+qCs7?=
 =?us-ascii?Q?E3AlQYSyr78jUHusJiyF43CUwtMT+UMnS2fP2WSP7S6ny8g3eJhcj3K446FP?=
 =?us-ascii?Q?8g=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CYYPR11MB8429.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 89efdb19-95c1-4d27-e676-08dc3c27a54c
X-MS-Exchange-CrossTenant-originalarrivaltime: 04 Mar 2024 08:46:55.3908 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: gAi3aUULuamKaDLfAbwlLlYIyLomvrpkfHFBar4TFiUcXwXA8W16+pfa1IKN2Xj4QcnwWhZhQUvVwRGnP9qsW8XXbJxTJu+CW4gZran3FxE0JyRZIxFtOIChAn5GRZFl
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BL1PR11MB5954
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1709542048; x=1741078048;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=AoZfeh/tUqeYU5EORSx719KUEpqWGwOBMvv2GVZOjak=;
 b=MS41pViokZExJfaujSy/gXEL039W2bMPrb/dUAwbxY9cPtJRk4ELicyC
 Va0AVtmuIk0nLmwxbB0MgZ+8qckGQBZOYTnpGXDjADuT3QNERDx5dxqmc
 38rjibmI+MXU0MWdnKMHqMG/A7IFjPkM09vyj5f6xPEQLCKsufCU4EBFg
 teZYTQOIrvxlu3RhEwxEPioPgHYko8hQ17nOoL3mK8IDrIbOFI47CGZeJ
 VImKpy3WeGOMmpn9YFEayDVh2jlq1RjmPoY+8tfcE83SlDXSF88V89lU+
 kidmX8H7p7pNrqCjr8E132vU4xhUL62oMTWAfpXcTcUGevpW/j2xVoKhG
 w==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=MS41pVio
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next 2/2] i40e: remove unnecessary
 qv_info ptr NULL checks
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
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of A=
lexey Kodanev
> Sent: Monday, February 26, 2024 6:51 PM
> To: intel-wired-lan@lists.osuosl.org
> Cc: Alexey Kodanev <aleksei.kodanev@bell-sw.com>
> Subject: [Intel-wired-lan] [PATCH iwl-next 2/2] i40e: remove unnecessary =
qv_info ptr NULL checks
>
> The "qv_info" ptr cannot be NULL when it gets the address of
> an element of the flexible array "qvlist_info->qv_info".
>
> Detected using the static analysis tool - Svace.
>
> Signed-off-by: Alexey Kodanev <aleksei.kodanev@bell-sw.com>
> ---
>  drivers/net/ethernet/intel/i40e/i40e_client.c      | 4 ----
>  drivers/net/ethernet/intel/i40e/i40e_virtchnl_pf.c | 4 ----
>  2 files changed, 8 deletions(-)
>

Tested-by: Pucha Himasekhar Reddy <himasekharx.reddy.pucha@intel.com> (A Co=
ntingent worker at Intel)

