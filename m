Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id E0280322236
	for <lists+intel-wired-lan@lfdr.de>; Mon, 22 Feb 2021 23:37:11 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 9264985775;
	Mon, 22 Feb 2021 22:37:10 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id n9gFwTBmWGpr; Mon, 22 Feb 2021 22:37:06 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 8C5CE85A97;
	Mon, 22 Feb 2021 22:37:06 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 522D11BF989
 for <intel-wired-lan@lists.osuosl.org>; Mon, 22 Feb 2021 22:37:04 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 3F97B605A4
 for <intel-wired-lan@lists.osuosl.org>; Mon, 22 Feb 2021 22:37:04 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id cvPajuWbdfLD for <intel-wired-lan@lists.osuosl.org>;
 Mon, 22 Feb 2021 22:37:01 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by smtp3.osuosl.org (Postfix) with ESMTPS id E520C605A6
 for <intel-wired-lan@lists.osuosl.org>; Mon, 22 Feb 2021 22:37:00 +0000 (UTC)
IronPort-SDR: J+bVhQdAvu8t/oGq7BCIvMz5bGYAwFYM3fGIwg0RS2DoJZVs4+ehPsj2It81x7KSZNbnmipFD9
 OHaIbHaMEjbg==
X-IronPort-AV: E=McAfee;i="6000,8403,9903"; a="184675528"
X-IronPort-AV: E=Sophos;i="5.81,198,1610438400"; d="scan'208";a="184675528"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Feb 2021 14:36:59 -0800
IronPort-SDR: oPy3rY8XC98tZzW8w+6FAwgHODf7Ar+1YD2XEn/bXFUJJHAmTTHxbznX378pfrAKn/dKQypw1P
 noAb4xgySnCg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.81,198,1610438400"; d="scan'208";a="364241443"
Received: from ranger.igk.intel.com ([10.102.21.164])
 by orsmga003.jf.intel.com with ESMTP; 22 Feb 2021 14:36:58 -0800
Date: Mon, 22 Feb 2021 23:26:16 +0100
From: Maciej Fijalkowski <maciej.fijalkowski@intel.com>
To: Jesse Brandeburg <jesse.brandeburg@intel.com>
Message-ID: <20210222222616.GA34692@ranger.igk.intel.com>
References: <20210222220046.807461-1-jesse.brandeburg@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210222220046.807461-1-jesse.brandeburg@intel.com>
User-Agent: Mutt/1.12.1 (2019-06-15)
Subject: Re: [Intel-wired-lan] [PATCH net-next v1] ice: report hash type
 such as L2/L3/L4
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
Cc: intel-wired-lan@lists.osuosl.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Mon, Feb 22, 2021 at 02:00:46PM -0800, Jesse Brandeburg wrote:
> The hardware is reporting the type of the hash used for RSS
> as a PTYPE field in the receive descriptor. Use this value to set
> the skb packet hash type by extending the hash type table to
> cover all 10-bits of possible values (requiring some variables
> to be changed to u16), and then use that table to convert
> to one of the four possible values in enum pkt_hash_types.
> 
> Without this change, the kernel will recalculate the hash in software,
> which can consume extra CPU cycles.
> 
> Signed-off-by: Kiran Patil <kiran.patil@intel.com>
> Signed-off-by: Jesse Brandeburg <jesse.brandeburg@intel.com>
> ---
>  .../net/ethernet/intel/ice/ice_lan_tx_rx.h    | 868 ++++++++++++++++++
>  drivers/net/ethernet/intel/ice/ice_txrx.c     |   2 +-
>  drivers/net/ethernet/intel/ice/ice_txrx_lib.c |  23 +-
>  drivers/net/ethernet/intel/ice/ice_txrx_lib.h |   2 +-
>  drivers/net/ethernet/intel/ice/ice_xsk.c      |   2 +-
>  5 files changed, 889 insertions(+), 8 deletions(-)
> 
> diff --git a/drivers/net/ethernet/intel/ice/ice_lan_tx_rx.h b/drivers/net/ethernet/intel/ice/ice_lan_tx_rx.h
> index 4ec24c3e813f..a5d5baf697b5 100644
> --- a/drivers/net/ethernet/intel/ice/ice_lan_tx_rx.h
> +++ b/drivers/net/ethernet/intel/ice/ice_lan_tx_rx.h
> @@ -584,6 +584,29 @@ struct ice_tlan_ctx {
>  	u8 int_q_state;	/* width not needed - internal - DO NOT WRITE!!! */
>  };
>  
> +/* The ice_ptype_lkup table is used to convert from the 10-bit ptype in the
> + * hardware to a bit-field that can be used by SW to more easily determine the
> + * packet type.
> + *
> + * Macros are used to shorten the table lines and make this table human
> + * readable.
> + *
> + * We store the PTYPE in the top byte of the bit field - this is just so that
> + * we can check that the table doesn't have a row missing, as the index into
> + * the table should be the PTYPE.
> + *
> + * Typical work flow:
> + *
> + * IF NOT ice_ptype_lkup[ptype].known
> + * THEN
> + *      Packet is unknown
> + * ELSE IF ice_ptype_lkup[ptype].outer_ip == ICE_RX_PTYPE_OUTER_IP
> + *      Use the rest of the fields to look at the tunnels, inner protocols, etc
> + * ELSE
> + *      Use the enum ice_rx_l2_ptype to decode the packet type
> + * ENDIF
> + */
> +
>  /* macro to make the table lines short */
>  #define ICE_PTT(PTYPE, OUTER_IP, OUTER_IP_VER, OUTER_FRAG, T, TE, TEF, I, PL)\
>  	{	PTYPE, \
> @@ -922,6 +945,851 @@ static const struct ice_rx_ptype_decoded ice_ptype_lkup[] = {
>  	ICE_PTT_UNUSED_ENTRY(253),
>  	ICE_PTT_UNUSED_ENTRY(254),
>  	ICE_PTT_UNUSED_ENTRY(255),
> +	ICE_PTT_UNUSED_ENTRY(256),
> +	ICE_PTT_UNUSED_ENTRY(257),
> +	ICE_PTT_UNUSED_ENTRY(258),
> +	ICE_PTT_UNUSED_ENTRY(259),

I think I need some justification for chosen approach. Do you envision
random entries for a particular ptype being changed from unused to used?

I might be missing something obvious, but given that *all* entries
[255,1023] are currently unused, why couldn't you do something among lines
below:

struct entry {
	int a;
	int b;
};

static struct entry entries[1024] = {
	{1, 2},
	{10, 20},
};

static void update_unused_entries(void)
{
	int i;

	for (i = 255; i < 1024; i++)
		entries[i].a = i;
}

int main(void)
{
	int i;

	for (i = 0; i < 1024; i++)
		printf("entry: a %d b %d\n", entries[i].a, entries[i].b);

	update_unused_entries();

	for (i = 0; i < 1024; i++)
		printf("entry: a %d b %d\n", entries[i].a, entries[i].b);

	return 0;
}

as you only need the ptype to be set per each entry.

> +
> +	ICE_PTT_UNUSED_ENTRY(260),
> +	ICE_PTT_UNUSED_ENTRY(261),
> +	ICE_PTT_UNUSED_ENTRY(262),
> +	ICE_PTT_UNUSED_ENTRY(263),
> +	ICE_PTT_UNUSED_ENTRY(264),
> +	ICE_PTT_UNUSED_ENTRY(265),
> +	ICE_PTT_UNUSED_ENTRY(266),
> +	ICE_PTT_UNUSED_ENTRY(267),
> +	ICE_PTT_UNUSED_ENTRY(268),
> +	ICE_PTT_UNUSED_ENTRY(269),
> +
> +	ICE_PTT_UNUSED_ENTRY(270),
> +	ICE_PTT_UNUSED_ENTRY(271),
> +	ICE_PTT_UNUSED_ENTRY(272),
> +	ICE_PTT_UNUSED_ENTRY(273),
> +	ICE_PTT_UNUSED_ENTRY(274),
> +	ICE_PTT_UNUSED_ENTRY(275),
> +	ICE_PTT_UNUSED_ENTRY(276),
> +	ICE_PTT_UNUSED_ENTRY(277),
> +	ICE_PTT_UNUSED_ENTRY(278),
> +	ICE_PTT_UNUSED_ENTRY(279),
> +
> +	ICE_PTT_UNUSED_ENTRY(280),
> +	ICE_PTT_UNUSED_ENTRY(281),
> +	ICE_PTT_UNUSED_ENTRY(282),
> +	ICE_PTT_UNUSED_ENTRY(283),
> +	ICE_PTT_UNUSED_ENTRY(284),
> +	ICE_PTT_UNUSED_ENTRY(285),
> +	ICE_PTT_UNUSED_ENTRY(286),
> +	ICE_PTT_UNUSED_ENTRY(287),
> +	ICE_PTT_UNUSED_ENTRY(288),
> +	ICE_PTT_UNUSED_ENTRY(289),
> +
> +	ICE_PTT_UNUSED_ENTRY(290),
> +	ICE_PTT_UNUSED_ENTRY(291),
> +	ICE_PTT_UNUSED_ENTRY(292),
> +	ICE_PTT_UNUSED_ENTRY(293),
> +	ICE_PTT_UNUSED_ENTRY(294),
> +	ICE_PTT_UNUSED_ENTRY(295),
> +	ICE_PTT_UNUSED_ENTRY(296),
> +	ICE_PTT_UNUSED_ENTRY(297),
> +	ICE_PTT_UNUSED_ENTRY(298),
> +	ICE_PTT_UNUSED_ENTRY(299),
> +
> +	ICE_PTT_UNUSED_ENTRY(300),
> +	ICE_PTT_UNUSED_ENTRY(301),
> +	ICE_PTT_UNUSED_ENTRY(302),
> +	ICE_PTT_UNUSED_ENTRY(303),
> +	ICE_PTT_UNUSED_ENTRY(304),
> +	ICE_PTT_UNUSED_ENTRY(305),
> +	ICE_PTT_UNUSED_ENTRY(306),
> +	ICE_PTT_UNUSED_ENTRY(307),
> +	ICE_PTT_UNUSED_ENTRY(308),
> +	ICE_PTT_UNUSED_ENTRY(309),
> +
> +	ICE_PTT_UNUSED_ENTRY(310),
> +	ICE_PTT_UNUSED_ENTRY(311),
> +	ICE_PTT_UNUSED_ENTRY(312),
> +	ICE_PTT_UNUSED_ENTRY(313),
> +	ICE_PTT_UNUSED_ENTRY(314),
> +	ICE_PTT_UNUSED_ENTRY(315),
> +	ICE_PTT_UNUSED_ENTRY(316),
> +	ICE_PTT_UNUSED_ENTRY(317),
> +	ICE_PTT_UNUSED_ENTRY(318),
> +	ICE_PTT_UNUSED_ENTRY(319),
> +
> +	ICE_PTT_UNUSED_ENTRY(320),
> +	ICE_PTT_UNUSED_ENTRY(321),
> +	ICE_PTT_UNUSED_ENTRY(322),
> +	ICE_PTT_UNUSED_ENTRY(323),
> +	ICE_PTT_UNUSED_ENTRY(324),
> +	ICE_PTT_UNUSED_ENTRY(325),
> +	ICE_PTT_UNUSED_ENTRY(326),
> +	ICE_PTT_UNUSED_ENTRY(327),
> +	ICE_PTT_UNUSED_ENTRY(328),
> +	ICE_PTT_UNUSED_ENTRY(329),
> +
> +	ICE_PTT_UNUSED_ENTRY(330),
> +	ICE_PTT_UNUSED_ENTRY(331),
> +	ICE_PTT_UNUSED_ENTRY(332),
> +	ICE_PTT_UNUSED_ENTRY(333),
> +	ICE_PTT_UNUSED_ENTRY(334),
> +	ICE_PTT_UNUSED_ENTRY(335),
> +	ICE_PTT_UNUSED_ENTRY(336),
> +	ICE_PTT_UNUSED_ENTRY(337),
> +	ICE_PTT_UNUSED_ENTRY(338),
> +	ICE_PTT_UNUSED_ENTRY(339),
> +
> +	ICE_PTT_UNUSED_ENTRY(340),
> +	ICE_PTT_UNUSED_ENTRY(341),
> +	ICE_PTT_UNUSED_ENTRY(342),
> +	ICE_PTT_UNUSED_ENTRY(343),
> +	ICE_PTT_UNUSED_ENTRY(344),
> +	ICE_PTT_UNUSED_ENTRY(345),
> +	ICE_PTT_UNUSED_ENTRY(346),
> +	ICE_PTT_UNUSED_ENTRY(347),
> +	ICE_PTT_UNUSED_ENTRY(348),
> +	ICE_PTT_UNUSED_ENTRY(349),
> +
> +	ICE_PTT_UNUSED_ENTRY(350),
> +	ICE_PTT_UNUSED_ENTRY(351),
> +	ICE_PTT_UNUSED_ENTRY(352),
> +	ICE_PTT_UNUSED_ENTRY(353),
> +	ICE_PTT_UNUSED_ENTRY(354),
> +	ICE_PTT_UNUSED_ENTRY(355),
> +	ICE_PTT_UNUSED_ENTRY(356),
> +	ICE_PTT_UNUSED_ENTRY(357),
> +	ICE_PTT_UNUSED_ENTRY(358),
> +	ICE_PTT_UNUSED_ENTRY(359),
> +
> +	ICE_PTT_UNUSED_ENTRY(360),
> +	ICE_PTT_UNUSED_ENTRY(361),
> +	ICE_PTT_UNUSED_ENTRY(362),
> +	ICE_PTT_UNUSED_ENTRY(363),
> +	ICE_PTT_UNUSED_ENTRY(364),
> +	ICE_PTT_UNUSED_ENTRY(365),
> +	ICE_PTT_UNUSED_ENTRY(366),
> +	ICE_PTT_UNUSED_ENTRY(367),
> +	ICE_PTT_UNUSED_ENTRY(368),
> +	ICE_PTT_UNUSED_ENTRY(369),
> +
> +	ICE_PTT_UNUSED_ENTRY(370),
> +	ICE_PTT_UNUSED_ENTRY(371),
> +	ICE_PTT_UNUSED_ENTRY(372),
> +	ICE_PTT_UNUSED_ENTRY(373),
> +	ICE_PTT_UNUSED_ENTRY(374),
> +	ICE_PTT_UNUSED_ENTRY(375),
> +	ICE_PTT_UNUSED_ENTRY(376),
> +	ICE_PTT_UNUSED_ENTRY(377),
> +	ICE_PTT_UNUSED_ENTRY(378),
> +	ICE_PTT_UNUSED_ENTRY(379),
> +
> +	ICE_PTT_UNUSED_ENTRY(380),
> +	ICE_PTT_UNUSED_ENTRY(381),
> +	ICE_PTT_UNUSED_ENTRY(382),
> +	ICE_PTT_UNUSED_ENTRY(383),
> +	ICE_PTT_UNUSED_ENTRY(384),
> +	ICE_PTT_UNUSED_ENTRY(385),
> +	ICE_PTT_UNUSED_ENTRY(386),
> +	ICE_PTT_UNUSED_ENTRY(387),
> +	ICE_PTT_UNUSED_ENTRY(388),
> +	ICE_PTT_UNUSED_ENTRY(389),
> +
> +	ICE_PTT_UNUSED_ENTRY(390),
> +	ICE_PTT_UNUSED_ENTRY(391),
> +	ICE_PTT_UNUSED_ENTRY(392),
> +	ICE_PTT_UNUSED_ENTRY(393),
> +	ICE_PTT_UNUSED_ENTRY(394),
> +	ICE_PTT_UNUSED_ENTRY(395),
> +	ICE_PTT_UNUSED_ENTRY(396),
> +	ICE_PTT_UNUSED_ENTRY(397),
> +	ICE_PTT_UNUSED_ENTRY(398),
> +	ICE_PTT_UNUSED_ENTRY(399),
> +
> +	ICE_PTT_UNUSED_ENTRY(400),
> +	ICE_PTT_UNUSED_ENTRY(401),
> +	ICE_PTT_UNUSED_ENTRY(402),
> +	ICE_PTT_UNUSED_ENTRY(403),
> +	ICE_PTT_UNUSED_ENTRY(404),
> +	ICE_PTT_UNUSED_ENTRY(405),
> +	ICE_PTT_UNUSED_ENTRY(406),
> +	ICE_PTT_UNUSED_ENTRY(407),
> +	ICE_PTT_UNUSED_ENTRY(408),
> +	ICE_PTT_UNUSED_ENTRY(409),
> +
> +	ICE_PTT_UNUSED_ENTRY(410),
> +	ICE_PTT_UNUSED_ENTRY(411),
> +	ICE_PTT_UNUSED_ENTRY(412),
> +	ICE_PTT_UNUSED_ENTRY(413),
> +	ICE_PTT_UNUSED_ENTRY(414),
> +	ICE_PTT_UNUSED_ENTRY(415),
> +	ICE_PTT_UNUSED_ENTRY(416),
> +	ICE_PTT_UNUSED_ENTRY(417),
> +	ICE_PTT_UNUSED_ENTRY(418),
> +	ICE_PTT_UNUSED_ENTRY(419),
> +
> +	ICE_PTT_UNUSED_ENTRY(420),
> +	ICE_PTT_UNUSED_ENTRY(421),
> +	ICE_PTT_UNUSED_ENTRY(422),
> +	ICE_PTT_UNUSED_ENTRY(423),
> +	ICE_PTT_UNUSED_ENTRY(424),
> +	ICE_PTT_UNUSED_ENTRY(425),
> +	ICE_PTT_UNUSED_ENTRY(426),
> +	ICE_PTT_UNUSED_ENTRY(427),
> +	ICE_PTT_UNUSED_ENTRY(428),
> +	ICE_PTT_UNUSED_ENTRY(429),
> +
> +	ICE_PTT_UNUSED_ENTRY(430),
> +	ICE_PTT_UNUSED_ENTRY(431),
> +	ICE_PTT_UNUSED_ENTRY(432),
> +	ICE_PTT_UNUSED_ENTRY(433),
> +	ICE_PTT_UNUSED_ENTRY(434),
> +	ICE_PTT_UNUSED_ENTRY(435),
> +	ICE_PTT_UNUSED_ENTRY(436),
> +	ICE_PTT_UNUSED_ENTRY(437),
> +	ICE_PTT_UNUSED_ENTRY(438),
> +	ICE_PTT_UNUSED_ENTRY(439),
> +
> +	ICE_PTT_UNUSED_ENTRY(440),
> +	ICE_PTT_UNUSED_ENTRY(441),
> +	ICE_PTT_UNUSED_ENTRY(442),
> +	ICE_PTT_UNUSED_ENTRY(443),
> +	ICE_PTT_UNUSED_ENTRY(444),
> +	ICE_PTT_UNUSED_ENTRY(445),
> +	ICE_PTT_UNUSED_ENTRY(446),
> +	ICE_PTT_UNUSED_ENTRY(447),
> +	ICE_PTT_UNUSED_ENTRY(448),
> +	ICE_PTT_UNUSED_ENTRY(449),
> +
> +	ICE_PTT_UNUSED_ENTRY(450),
> +	ICE_PTT_UNUSED_ENTRY(451),
> +	ICE_PTT_UNUSED_ENTRY(452),
> +	ICE_PTT_UNUSED_ENTRY(453),
> +	ICE_PTT_UNUSED_ENTRY(454),
> +	ICE_PTT_UNUSED_ENTRY(455),
> +	ICE_PTT_UNUSED_ENTRY(456),
> +	ICE_PTT_UNUSED_ENTRY(457),
> +	ICE_PTT_UNUSED_ENTRY(458),
> +	ICE_PTT_UNUSED_ENTRY(459),
> +
> +	ICE_PTT_UNUSED_ENTRY(460),
> +	ICE_PTT_UNUSED_ENTRY(461),
> +	ICE_PTT_UNUSED_ENTRY(462),
> +	ICE_PTT_UNUSED_ENTRY(463),
> +	ICE_PTT_UNUSED_ENTRY(464),
> +	ICE_PTT_UNUSED_ENTRY(465),
> +	ICE_PTT_UNUSED_ENTRY(466),
> +	ICE_PTT_UNUSED_ENTRY(467),
> +	ICE_PTT_UNUSED_ENTRY(468),
> +	ICE_PTT_UNUSED_ENTRY(469),
> +
> +	ICE_PTT_UNUSED_ENTRY(470),
> +	ICE_PTT_UNUSED_ENTRY(471),
> +	ICE_PTT_UNUSED_ENTRY(472),
> +	ICE_PTT_UNUSED_ENTRY(473),
> +	ICE_PTT_UNUSED_ENTRY(474),
> +	ICE_PTT_UNUSED_ENTRY(475),
> +	ICE_PTT_UNUSED_ENTRY(476),
> +	ICE_PTT_UNUSED_ENTRY(477),
> +	ICE_PTT_UNUSED_ENTRY(478),
> +	ICE_PTT_UNUSED_ENTRY(479),
> +
> +	ICE_PTT_UNUSED_ENTRY(480),
> +	ICE_PTT_UNUSED_ENTRY(481),
> +	ICE_PTT_UNUSED_ENTRY(482),
> +	ICE_PTT_UNUSED_ENTRY(483),
> +	ICE_PTT_UNUSED_ENTRY(484),
> +	ICE_PTT_UNUSED_ENTRY(485),
> +	ICE_PTT_UNUSED_ENTRY(486),
> +	ICE_PTT_UNUSED_ENTRY(487),
> +	ICE_PTT_UNUSED_ENTRY(488),
> +	ICE_PTT_UNUSED_ENTRY(489),
> +
> +	ICE_PTT_UNUSED_ENTRY(490),
> +	ICE_PTT_UNUSED_ENTRY(491),
> +	ICE_PTT_UNUSED_ENTRY(492),
> +	ICE_PTT_UNUSED_ENTRY(493),
> +	ICE_PTT_UNUSED_ENTRY(494),
> +	ICE_PTT_UNUSED_ENTRY(495),
> +	ICE_PTT_UNUSED_ENTRY(496),
> +	ICE_PTT_UNUSED_ENTRY(497),
> +	ICE_PTT_UNUSED_ENTRY(498),
> +	ICE_PTT_UNUSED_ENTRY(499),
> +
> +	ICE_PTT_UNUSED_ENTRY(500),
> +	ICE_PTT_UNUSED_ENTRY(501),
> +	ICE_PTT_UNUSED_ENTRY(502),
> +	ICE_PTT_UNUSED_ENTRY(503),
> +	ICE_PTT_UNUSED_ENTRY(504),
> +	ICE_PTT_UNUSED_ENTRY(505),
> +	ICE_PTT_UNUSED_ENTRY(506),
> +	ICE_PTT_UNUSED_ENTRY(507),
> +	ICE_PTT_UNUSED_ENTRY(508),
> +	ICE_PTT_UNUSED_ENTRY(509),
> +
> +	ICE_PTT_UNUSED_ENTRY(510),
> +	ICE_PTT_UNUSED_ENTRY(511),
> +	ICE_PTT_UNUSED_ENTRY(512),
> +	ICE_PTT_UNUSED_ENTRY(513),
> +	ICE_PTT_UNUSED_ENTRY(514),
> +	ICE_PTT_UNUSED_ENTRY(515),
> +	ICE_PTT_UNUSED_ENTRY(516),
> +	ICE_PTT_UNUSED_ENTRY(517),
> +	ICE_PTT_UNUSED_ENTRY(518),
> +	ICE_PTT_UNUSED_ENTRY(519),
> +
> +	ICE_PTT_UNUSED_ENTRY(520),
> +	ICE_PTT_UNUSED_ENTRY(521),
> +	ICE_PTT_UNUSED_ENTRY(522),
> +	ICE_PTT_UNUSED_ENTRY(523),
> +	ICE_PTT_UNUSED_ENTRY(524),
> +	ICE_PTT_UNUSED_ENTRY(525),
> +	ICE_PTT_UNUSED_ENTRY(526),
> +	ICE_PTT_UNUSED_ENTRY(527),
> +	ICE_PTT_UNUSED_ENTRY(528),
> +	ICE_PTT_UNUSED_ENTRY(529),
> +
> +	ICE_PTT_UNUSED_ENTRY(530),
> +	ICE_PTT_UNUSED_ENTRY(531),
> +	ICE_PTT_UNUSED_ENTRY(532),
> +	ICE_PTT_UNUSED_ENTRY(533),
> +	ICE_PTT_UNUSED_ENTRY(534),
> +	ICE_PTT_UNUSED_ENTRY(535),
> +	ICE_PTT_UNUSED_ENTRY(536),
> +	ICE_PTT_UNUSED_ENTRY(537),
> +	ICE_PTT_UNUSED_ENTRY(538),
> +	ICE_PTT_UNUSED_ENTRY(539),
> +
> +	ICE_PTT_UNUSED_ENTRY(540),
> +	ICE_PTT_UNUSED_ENTRY(541),
> +	ICE_PTT_UNUSED_ENTRY(542),
> +	ICE_PTT_UNUSED_ENTRY(543),
> +	ICE_PTT_UNUSED_ENTRY(544),
> +	ICE_PTT_UNUSED_ENTRY(545),
> +	ICE_PTT_UNUSED_ENTRY(546),
> +	ICE_PTT_UNUSED_ENTRY(547),
> +	ICE_PTT_UNUSED_ENTRY(548),
> +	ICE_PTT_UNUSED_ENTRY(549),
> +
> +	ICE_PTT_UNUSED_ENTRY(550),
> +	ICE_PTT_UNUSED_ENTRY(551),
> +	ICE_PTT_UNUSED_ENTRY(552),
> +	ICE_PTT_UNUSED_ENTRY(553),
> +	ICE_PTT_UNUSED_ENTRY(554),
> +	ICE_PTT_UNUSED_ENTRY(555),
> +	ICE_PTT_UNUSED_ENTRY(556),
> +	ICE_PTT_UNUSED_ENTRY(557),
> +	ICE_PTT_UNUSED_ENTRY(558),
> +	ICE_PTT_UNUSED_ENTRY(559),
> +
> +	ICE_PTT_UNUSED_ENTRY(560),
> +	ICE_PTT_UNUSED_ENTRY(561),
> +	ICE_PTT_UNUSED_ENTRY(562),
> +	ICE_PTT_UNUSED_ENTRY(563),
> +	ICE_PTT_UNUSED_ENTRY(564),
> +	ICE_PTT_UNUSED_ENTRY(565),
> +	ICE_PTT_UNUSED_ENTRY(566),
> +	ICE_PTT_UNUSED_ENTRY(567),
> +	ICE_PTT_UNUSED_ENTRY(568),
> +	ICE_PTT_UNUSED_ENTRY(569),
> +
> +	ICE_PTT_UNUSED_ENTRY(570),
> +	ICE_PTT_UNUSED_ENTRY(571),
> +	ICE_PTT_UNUSED_ENTRY(572),
> +	ICE_PTT_UNUSED_ENTRY(573),
> +	ICE_PTT_UNUSED_ENTRY(574),
> +	ICE_PTT_UNUSED_ENTRY(575),
> +	ICE_PTT_UNUSED_ENTRY(576),
> +	ICE_PTT_UNUSED_ENTRY(577),
> +	ICE_PTT_UNUSED_ENTRY(578),
> +	ICE_PTT_UNUSED_ENTRY(579),
> +
> +	ICE_PTT_UNUSED_ENTRY(580),
> +	ICE_PTT_UNUSED_ENTRY(581),
> +	ICE_PTT_UNUSED_ENTRY(582),
> +	ICE_PTT_UNUSED_ENTRY(583),
> +	ICE_PTT_UNUSED_ENTRY(584),
> +	ICE_PTT_UNUSED_ENTRY(585),
> +	ICE_PTT_UNUSED_ENTRY(586),
> +	ICE_PTT_UNUSED_ENTRY(587),
> +	ICE_PTT_UNUSED_ENTRY(588),
> +	ICE_PTT_UNUSED_ENTRY(589),
> +
> +	ICE_PTT_UNUSED_ENTRY(590),
> +	ICE_PTT_UNUSED_ENTRY(591),
> +	ICE_PTT_UNUSED_ENTRY(592),
> +	ICE_PTT_UNUSED_ENTRY(593),
> +	ICE_PTT_UNUSED_ENTRY(594),
> +	ICE_PTT_UNUSED_ENTRY(595),
> +	ICE_PTT_UNUSED_ENTRY(596),
> +	ICE_PTT_UNUSED_ENTRY(597),
> +	ICE_PTT_UNUSED_ENTRY(598),
> +	ICE_PTT_UNUSED_ENTRY(599),
> +
> +	ICE_PTT_UNUSED_ENTRY(600),
> +	ICE_PTT_UNUSED_ENTRY(601),
> +	ICE_PTT_UNUSED_ENTRY(602),
> +	ICE_PTT_UNUSED_ENTRY(603),
> +	ICE_PTT_UNUSED_ENTRY(604),
> +	ICE_PTT_UNUSED_ENTRY(605),
> +	ICE_PTT_UNUSED_ENTRY(606),
> +	ICE_PTT_UNUSED_ENTRY(607),
> +	ICE_PTT_UNUSED_ENTRY(608),
> +	ICE_PTT_UNUSED_ENTRY(609),
> +
> +	ICE_PTT_UNUSED_ENTRY(610),
> +	ICE_PTT_UNUSED_ENTRY(611),
> +	ICE_PTT_UNUSED_ENTRY(612),
> +	ICE_PTT_UNUSED_ENTRY(613),
> +	ICE_PTT_UNUSED_ENTRY(614),
> +	ICE_PTT_UNUSED_ENTRY(615),
> +	ICE_PTT_UNUSED_ENTRY(616),
> +	ICE_PTT_UNUSED_ENTRY(617),
> +	ICE_PTT_UNUSED_ENTRY(618),
> +	ICE_PTT_UNUSED_ENTRY(619),
> +
> +	ICE_PTT_UNUSED_ENTRY(620),
> +	ICE_PTT_UNUSED_ENTRY(621),
> +	ICE_PTT_UNUSED_ENTRY(622),
> +	ICE_PTT_UNUSED_ENTRY(623),
> +	ICE_PTT_UNUSED_ENTRY(624),
> +	ICE_PTT_UNUSED_ENTRY(625),
> +	ICE_PTT_UNUSED_ENTRY(626),
> +	ICE_PTT_UNUSED_ENTRY(627),
> +	ICE_PTT_UNUSED_ENTRY(628),
> +	ICE_PTT_UNUSED_ENTRY(629),
> +
> +	ICE_PTT_UNUSED_ENTRY(630),
> +	ICE_PTT_UNUSED_ENTRY(631),
> +	ICE_PTT_UNUSED_ENTRY(632),
> +	ICE_PTT_UNUSED_ENTRY(633),
> +	ICE_PTT_UNUSED_ENTRY(634),
> +	ICE_PTT_UNUSED_ENTRY(635),
> +	ICE_PTT_UNUSED_ENTRY(636),
> +	ICE_PTT_UNUSED_ENTRY(637),
> +	ICE_PTT_UNUSED_ENTRY(638),
> +	ICE_PTT_UNUSED_ENTRY(639),
> +
> +	ICE_PTT_UNUSED_ENTRY(640),
> +	ICE_PTT_UNUSED_ENTRY(641),
> +	ICE_PTT_UNUSED_ENTRY(642),
> +	ICE_PTT_UNUSED_ENTRY(643),
> +	ICE_PTT_UNUSED_ENTRY(644),
> +	ICE_PTT_UNUSED_ENTRY(645),
> +	ICE_PTT_UNUSED_ENTRY(646),
> +	ICE_PTT_UNUSED_ENTRY(647),
> +	ICE_PTT_UNUSED_ENTRY(648),
> +	ICE_PTT_UNUSED_ENTRY(649),
> +
> +	ICE_PTT_UNUSED_ENTRY(650),
> +	ICE_PTT_UNUSED_ENTRY(651),
> +	ICE_PTT_UNUSED_ENTRY(652),
> +	ICE_PTT_UNUSED_ENTRY(653),
> +	ICE_PTT_UNUSED_ENTRY(654),
> +	ICE_PTT_UNUSED_ENTRY(655),
> +	ICE_PTT_UNUSED_ENTRY(656),
> +	ICE_PTT_UNUSED_ENTRY(657),
> +	ICE_PTT_UNUSED_ENTRY(658),
> +	ICE_PTT_UNUSED_ENTRY(659),
> +
> +	ICE_PTT_UNUSED_ENTRY(660),
> +	ICE_PTT_UNUSED_ENTRY(661),
> +	ICE_PTT_UNUSED_ENTRY(662),
> +	ICE_PTT_UNUSED_ENTRY(663),
> +	ICE_PTT_UNUSED_ENTRY(664),
> +	ICE_PTT_UNUSED_ENTRY(665),
> +	ICE_PTT_UNUSED_ENTRY(666),
> +	ICE_PTT_UNUSED_ENTRY(667),
> +	ICE_PTT_UNUSED_ENTRY(668),
> +	ICE_PTT_UNUSED_ENTRY(669),
> +
> +	ICE_PTT_UNUSED_ENTRY(670),
> +	ICE_PTT_UNUSED_ENTRY(671),
> +	ICE_PTT_UNUSED_ENTRY(672),
> +	ICE_PTT_UNUSED_ENTRY(673),
> +	ICE_PTT_UNUSED_ENTRY(674),
> +	ICE_PTT_UNUSED_ENTRY(675),
> +	ICE_PTT_UNUSED_ENTRY(676),
> +	ICE_PTT_UNUSED_ENTRY(677),
> +	ICE_PTT_UNUSED_ENTRY(678),
> +	ICE_PTT_UNUSED_ENTRY(679),
> +
> +	ICE_PTT_UNUSED_ENTRY(680),
> +	ICE_PTT_UNUSED_ENTRY(681),
> +	ICE_PTT_UNUSED_ENTRY(682),
> +	ICE_PTT_UNUSED_ENTRY(683),
> +	ICE_PTT_UNUSED_ENTRY(684),
> +	ICE_PTT_UNUSED_ENTRY(685),
> +	ICE_PTT_UNUSED_ENTRY(686),
> +	ICE_PTT_UNUSED_ENTRY(687),
> +	ICE_PTT_UNUSED_ENTRY(688),
> +	ICE_PTT_UNUSED_ENTRY(689),
> +
> +	ICE_PTT_UNUSED_ENTRY(690),
> +	ICE_PTT_UNUSED_ENTRY(691),
> +	ICE_PTT_UNUSED_ENTRY(692),
> +	ICE_PTT_UNUSED_ENTRY(693),
> +	ICE_PTT_UNUSED_ENTRY(694),
> +	ICE_PTT_UNUSED_ENTRY(695),
> +	ICE_PTT_UNUSED_ENTRY(696),
> +	ICE_PTT_UNUSED_ENTRY(697),
> +	ICE_PTT_UNUSED_ENTRY(698),
> +	ICE_PTT_UNUSED_ENTRY(699),
> +
> +	ICE_PTT_UNUSED_ENTRY(700),
> +	ICE_PTT_UNUSED_ENTRY(701),
> +	ICE_PTT_UNUSED_ENTRY(702),
> +	ICE_PTT_UNUSED_ENTRY(703),
> +	ICE_PTT_UNUSED_ENTRY(704),
> +	ICE_PTT_UNUSED_ENTRY(705),
> +	ICE_PTT_UNUSED_ENTRY(706),
> +	ICE_PTT_UNUSED_ENTRY(707),
> +	ICE_PTT_UNUSED_ENTRY(708),
> +	ICE_PTT_UNUSED_ENTRY(709),
> +
> +	ICE_PTT_UNUSED_ENTRY(710),
> +	ICE_PTT_UNUSED_ENTRY(711),
> +	ICE_PTT_UNUSED_ENTRY(712),
> +	ICE_PTT_UNUSED_ENTRY(713),
> +	ICE_PTT_UNUSED_ENTRY(714),
> +	ICE_PTT_UNUSED_ENTRY(715),
> +	ICE_PTT_UNUSED_ENTRY(716),
> +	ICE_PTT_UNUSED_ENTRY(717),
> +	ICE_PTT_UNUSED_ENTRY(718),
> +	ICE_PTT_UNUSED_ENTRY(719),
> +
> +	ICE_PTT_UNUSED_ENTRY(720),
> +	ICE_PTT_UNUSED_ENTRY(721),
> +	ICE_PTT_UNUSED_ENTRY(722),
> +	ICE_PTT_UNUSED_ENTRY(723),
> +	ICE_PTT_UNUSED_ENTRY(724),
> +	ICE_PTT_UNUSED_ENTRY(725),
> +	ICE_PTT_UNUSED_ENTRY(726),
> +	ICE_PTT_UNUSED_ENTRY(727),
> +	ICE_PTT_UNUSED_ENTRY(728),
> +	ICE_PTT_UNUSED_ENTRY(729),
> +
> +	ICE_PTT_UNUSED_ENTRY(730),
> +	ICE_PTT_UNUSED_ENTRY(731),
> +	ICE_PTT_UNUSED_ENTRY(732),
> +	ICE_PTT_UNUSED_ENTRY(733),
> +	ICE_PTT_UNUSED_ENTRY(734),
> +	ICE_PTT_UNUSED_ENTRY(735),
> +	ICE_PTT_UNUSED_ENTRY(736),
> +	ICE_PTT_UNUSED_ENTRY(737),
> +	ICE_PTT_UNUSED_ENTRY(738),
> +	ICE_PTT_UNUSED_ENTRY(739),
> +
> +	ICE_PTT_UNUSED_ENTRY(740),
> +	ICE_PTT_UNUSED_ENTRY(741),
> +	ICE_PTT_UNUSED_ENTRY(742),
> +	ICE_PTT_UNUSED_ENTRY(743),
> +	ICE_PTT_UNUSED_ENTRY(744),
> +	ICE_PTT_UNUSED_ENTRY(745),
> +	ICE_PTT_UNUSED_ENTRY(746),
> +	ICE_PTT_UNUSED_ENTRY(747),
> +	ICE_PTT_UNUSED_ENTRY(748),
> +	ICE_PTT_UNUSED_ENTRY(749),
> +
> +	ICE_PTT_UNUSED_ENTRY(750),
> +	ICE_PTT_UNUSED_ENTRY(751),
> +	ICE_PTT_UNUSED_ENTRY(752),
> +	ICE_PTT_UNUSED_ENTRY(753),
> +	ICE_PTT_UNUSED_ENTRY(754),
> +	ICE_PTT_UNUSED_ENTRY(755),
> +	ICE_PTT_UNUSED_ENTRY(756),
> +	ICE_PTT_UNUSED_ENTRY(757),
> +	ICE_PTT_UNUSED_ENTRY(758),
> +	ICE_PTT_UNUSED_ENTRY(759),
> +
> +	ICE_PTT_UNUSED_ENTRY(760),
> +	ICE_PTT_UNUSED_ENTRY(761),
> +	ICE_PTT_UNUSED_ENTRY(762),
> +	ICE_PTT_UNUSED_ENTRY(763),
> +	ICE_PTT_UNUSED_ENTRY(764),
> +	ICE_PTT_UNUSED_ENTRY(765),
> +	ICE_PTT_UNUSED_ENTRY(766),
> +	ICE_PTT_UNUSED_ENTRY(767),
> +	ICE_PTT_UNUSED_ENTRY(768),
> +	ICE_PTT_UNUSED_ENTRY(769),
> +
> +	ICE_PTT_UNUSED_ENTRY(770),
> +	ICE_PTT_UNUSED_ENTRY(771),
> +	ICE_PTT_UNUSED_ENTRY(772),
> +	ICE_PTT_UNUSED_ENTRY(773),
> +	ICE_PTT_UNUSED_ENTRY(774),
> +	ICE_PTT_UNUSED_ENTRY(775),
> +	ICE_PTT_UNUSED_ENTRY(776),
> +	ICE_PTT_UNUSED_ENTRY(777),
> +	ICE_PTT_UNUSED_ENTRY(778),
> +	ICE_PTT_UNUSED_ENTRY(779),
> +
> +	ICE_PTT_UNUSED_ENTRY(780),
> +	ICE_PTT_UNUSED_ENTRY(781),
> +	ICE_PTT_UNUSED_ENTRY(782),
> +	ICE_PTT_UNUSED_ENTRY(783),
> +	ICE_PTT_UNUSED_ENTRY(784),
> +	ICE_PTT_UNUSED_ENTRY(785),
> +	ICE_PTT_UNUSED_ENTRY(786),
> +	ICE_PTT_UNUSED_ENTRY(787),
> +	ICE_PTT_UNUSED_ENTRY(788),
> +	ICE_PTT_UNUSED_ENTRY(789),
> +
> +	ICE_PTT_UNUSED_ENTRY(790),
> +	ICE_PTT_UNUSED_ENTRY(791),
> +	ICE_PTT_UNUSED_ENTRY(792),
> +	ICE_PTT_UNUSED_ENTRY(793),
> +	ICE_PTT_UNUSED_ENTRY(794),
> +	ICE_PTT_UNUSED_ENTRY(795),
> +	ICE_PTT_UNUSED_ENTRY(796),
> +	ICE_PTT_UNUSED_ENTRY(797),
> +	ICE_PTT_UNUSED_ENTRY(798),
> +	ICE_PTT_UNUSED_ENTRY(799),
> +
> +	ICE_PTT_UNUSED_ENTRY(800),
> +	ICE_PTT_UNUSED_ENTRY(801),
> +	ICE_PTT_UNUSED_ENTRY(802),
> +	ICE_PTT_UNUSED_ENTRY(803),
> +	ICE_PTT_UNUSED_ENTRY(804),
> +	ICE_PTT_UNUSED_ENTRY(805),
> +	ICE_PTT_UNUSED_ENTRY(806),
> +	ICE_PTT_UNUSED_ENTRY(807),
> +	ICE_PTT_UNUSED_ENTRY(808),
> +	ICE_PTT_UNUSED_ENTRY(809),
> +
> +	ICE_PTT_UNUSED_ENTRY(810),
> +	ICE_PTT_UNUSED_ENTRY(811),
> +	ICE_PTT_UNUSED_ENTRY(812),
> +	ICE_PTT_UNUSED_ENTRY(813),
> +	ICE_PTT_UNUSED_ENTRY(814),
> +	ICE_PTT_UNUSED_ENTRY(815),
> +	ICE_PTT_UNUSED_ENTRY(816),
> +	ICE_PTT_UNUSED_ENTRY(817),
> +	ICE_PTT_UNUSED_ENTRY(818),
> +	ICE_PTT_UNUSED_ENTRY(819),
> +
> +	ICE_PTT_UNUSED_ENTRY(820),
> +	ICE_PTT_UNUSED_ENTRY(821),
> +	ICE_PTT_UNUSED_ENTRY(822),
> +	ICE_PTT_UNUSED_ENTRY(823),
> +	ICE_PTT_UNUSED_ENTRY(824),
> +	ICE_PTT_UNUSED_ENTRY(825),
> +	ICE_PTT_UNUSED_ENTRY(826),
> +	ICE_PTT_UNUSED_ENTRY(827),
> +	ICE_PTT_UNUSED_ENTRY(828),
> +	ICE_PTT_UNUSED_ENTRY(829),
> +
> +	ICE_PTT_UNUSED_ENTRY(830),
> +	ICE_PTT_UNUSED_ENTRY(831),
> +	ICE_PTT_UNUSED_ENTRY(832),
> +	ICE_PTT_UNUSED_ENTRY(833),
> +	ICE_PTT_UNUSED_ENTRY(834),
> +	ICE_PTT_UNUSED_ENTRY(835),
> +	ICE_PTT_UNUSED_ENTRY(836),
> +	ICE_PTT_UNUSED_ENTRY(837),
> +	ICE_PTT_UNUSED_ENTRY(838),
> +	ICE_PTT_UNUSED_ENTRY(839),
> +
> +	ICE_PTT_UNUSED_ENTRY(840),
> +	ICE_PTT_UNUSED_ENTRY(841),
> +	ICE_PTT_UNUSED_ENTRY(842),
> +	ICE_PTT_UNUSED_ENTRY(843),
> +	ICE_PTT_UNUSED_ENTRY(844),
> +	ICE_PTT_UNUSED_ENTRY(845),
> +	ICE_PTT_UNUSED_ENTRY(846),
> +	ICE_PTT_UNUSED_ENTRY(847),
> +	ICE_PTT_UNUSED_ENTRY(848),
> +	ICE_PTT_UNUSED_ENTRY(849),
> +
> +	ICE_PTT_UNUSED_ENTRY(850),
> +	ICE_PTT_UNUSED_ENTRY(851),
> +	ICE_PTT_UNUSED_ENTRY(852),
> +	ICE_PTT_UNUSED_ENTRY(853),
> +	ICE_PTT_UNUSED_ENTRY(854),
> +	ICE_PTT_UNUSED_ENTRY(855),
> +	ICE_PTT_UNUSED_ENTRY(856),
> +	ICE_PTT_UNUSED_ENTRY(857),
> +	ICE_PTT_UNUSED_ENTRY(858),
> +	ICE_PTT_UNUSED_ENTRY(859),
> +
> +	ICE_PTT_UNUSED_ENTRY(860),
> +	ICE_PTT_UNUSED_ENTRY(861),
> +	ICE_PTT_UNUSED_ENTRY(862),
> +	ICE_PTT_UNUSED_ENTRY(863),
> +	ICE_PTT_UNUSED_ENTRY(864),
> +	ICE_PTT_UNUSED_ENTRY(865),
> +	ICE_PTT_UNUSED_ENTRY(866),
> +	ICE_PTT_UNUSED_ENTRY(867),
> +	ICE_PTT_UNUSED_ENTRY(868),
> +	ICE_PTT_UNUSED_ENTRY(869),
> +
> +	ICE_PTT_UNUSED_ENTRY(870),
> +	ICE_PTT_UNUSED_ENTRY(871),
> +	ICE_PTT_UNUSED_ENTRY(872),
> +	ICE_PTT_UNUSED_ENTRY(873),
> +	ICE_PTT_UNUSED_ENTRY(874),
> +	ICE_PTT_UNUSED_ENTRY(875),
> +	ICE_PTT_UNUSED_ENTRY(876),
> +	ICE_PTT_UNUSED_ENTRY(877),
> +	ICE_PTT_UNUSED_ENTRY(878),
> +	ICE_PTT_UNUSED_ENTRY(879),
> +
> +	ICE_PTT_UNUSED_ENTRY(880),
> +	ICE_PTT_UNUSED_ENTRY(881),
> +	ICE_PTT_UNUSED_ENTRY(882),
> +	ICE_PTT_UNUSED_ENTRY(883),
> +	ICE_PTT_UNUSED_ENTRY(884),
> +	ICE_PTT_UNUSED_ENTRY(885),
> +	ICE_PTT_UNUSED_ENTRY(886),
> +	ICE_PTT_UNUSED_ENTRY(887),
> +	ICE_PTT_UNUSED_ENTRY(888),
> +	ICE_PTT_UNUSED_ENTRY(889),
> +
> +	ICE_PTT_UNUSED_ENTRY(890),
> +	ICE_PTT_UNUSED_ENTRY(891),
> +	ICE_PTT_UNUSED_ENTRY(892),
> +	ICE_PTT_UNUSED_ENTRY(893),
> +	ICE_PTT_UNUSED_ENTRY(894),
> +	ICE_PTT_UNUSED_ENTRY(895),
> +	ICE_PTT_UNUSED_ENTRY(896),
> +	ICE_PTT_UNUSED_ENTRY(897),
> +	ICE_PTT_UNUSED_ENTRY(898),
> +	ICE_PTT_UNUSED_ENTRY(899),
> +
> +	ICE_PTT_UNUSED_ENTRY(900),
> +	ICE_PTT_UNUSED_ENTRY(901),
> +	ICE_PTT_UNUSED_ENTRY(902),
> +	ICE_PTT_UNUSED_ENTRY(903),
> +	ICE_PTT_UNUSED_ENTRY(904),
> +	ICE_PTT_UNUSED_ENTRY(905),
> +	ICE_PTT_UNUSED_ENTRY(906),
> +	ICE_PTT_UNUSED_ENTRY(907),
> +	ICE_PTT_UNUSED_ENTRY(908),
> +	ICE_PTT_UNUSED_ENTRY(909),
> +
> +	ICE_PTT_UNUSED_ENTRY(910),
> +	ICE_PTT_UNUSED_ENTRY(911),
> +	ICE_PTT_UNUSED_ENTRY(912),
> +	ICE_PTT_UNUSED_ENTRY(913),
> +	ICE_PTT_UNUSED_ENTRY(914),
> +	ICE_PTT_UNUSED_ENTRY(915),
> +	ICE_PTT_UNUSED_ENTRY(916),
> +	ICE_PTT_UNUSED_ENTRY(917),
> +	ICE_PTT_UNUSED_ENTRY(918),
> +	ICE_PTT_UNUSED_ENTRY(919),
> +
> +	ICE_PTT_UNUSED_ENTRY(920),
> +	ICE_PTT_UNUSED_ENTRY(921),
> +	ICE_PTT_UNUSED_ENTRY(922),
> +	ICE_PTT_UNUSED_ENTRY(923),
> +	ICE_PTT_UNUSED_ENTRY(924),
> +	ICE_PTT_UNUSED_ENTRY(925),
> +	ICE_PTT_UNUSED_ENTRY(926),
> +	ICE_PTT_UNUSED_ENTRY(927),
> +	ICE_PTT_UNUSED_ENTRY(928),
> +	ICE_PTT_UNUSED_ENTRY(929),
> +
> +	ICE_PTT_UNUSED_ENTRY(930),
> +	ICE_PTT_UNUSED_ENTRY(931),
> +	ICE_PTT_UNUSED_ENTRY(932),
> +	ICE_PTT_UNUSED_ENTRY(933),
> +	ICE_PTT_UNUSED_ENTRY(934),
> +	ICE_PTT_UNUSED_ENTRY(935),
> +	ICE_PTT_UNUSED_ENTRY(936),
> +	ICE_PTT_UNUSED_ENTRY(937),
> +	ICE_PTT_UNUSED_ENTRY(938),
> +	ICE_PTT_UNUSED_ENTRY(939),
> +
> +	ICE_PTT_UNUSED_ENTRY(940),
> +	ICE_PTT_UNUSED_ENTRY(941),
> +	ICE_PTT_UNUSED_ENTRY(942),
> +	ICE_PTT_UNUSED_ENTRY(943),
> +	ICE_PTT_UNUSED_ENTRY(944),
> +	ICE_PTT_UNUSED_ENTRY(945),
> +	ICE_PTT_UNUSED_ENTRY(946),
> +	ICE_PTT_UNUSED_ENTRY(947),
> +	ICE_PTT_UNUSED_ENTRY(948),
> +	ICE_PTT_UNUSED_ENTRY(949),
> +
> +	ICE_PTT_UNUSED_ENTRY(950),
> +	ICE_PTT_UNUSED_ENTRY(951),
> +	ICE_PTT_UNUSED_ENTRY(952),
> +	ICE_PTT_UNUSED_ENTRY(953),
> +	ICE_PTT_UNUSED_ENTRY(954),
> +	ICE_PTT_UNUSED_ENTRY(955),
> +	ICE_PTT_UNUSED_ENTRY(956),
> +	ICE_PTT_UNUSED_ENTRY(957),
> +	ICE_PTT_UNUSED_ENTRY(958),
> +	ICE_PTT_UNUSED_ENTRY(959),
> +
> +	ICE_PTT_UNUSED_ENTRY(960),
> +	ICE_PTT_UNUSED_ENTRY(961),
> +	ICE_PTT_UNUSED_ENTRY(962),
> +	ICE_PTT_UNUSED_ENTRY(963),
> +	ICE_PTT_UNUSED_ENTRY(964),
> +	ICE_PTT_UNUSED_ENTRY(965),
> +	ICE_PTT_UNUSED_ENTRY(966),
> +	ICE_PTT_UNUSED_ENTRY(967),
> +	ICE_PTT_UNUSED_ENTRY(968),
> +	ICE_PTT_UNUSED_ENTRY(969),
> +
> +	ICE_PTT_UNUSED_ENTRY(970),
> +	ICE_PTT_UNUSED_ENTRY(971),
> +	ICE_PTT_UNUSED_ENTRY(972),
> +	ICE_PTT_UNUSED_ENTRY(973),
> +	ICE_PTT_UNUSED_ENTRY(974),
> +	ICE_PTT_UNUSED_ENTRY(975),
> +	ICE_PTT_UNUSED_ENTRY(976),
> +	ICE_PTT_UNUSED_ENTRY(977),
> +	ICE_PTT_UNUSED_ENTRY(978),
> +	ICE_PTT_UNUSED_ENTRY(979),
> +
> +	ICE_PTT_UNUSED_ENTRY(980),
> +	ICE_PTT_UNUSED_ENTRY(981),
> +	ICE_PTT_UNUSED_ENTRY(982),
> +	ICE_PTT_UNUSED_ENTRY(983),
> +	ICE_PTT_UNUSED_ENTRY(984),
> +	ICE_PTT_UNUSED_ENTRY(985),
> +	ICE_PTT_UNUSED_ENTRY(986),
> +	ICE_PTT_UNUSED_ENTRY(987),
> +	ICE_PTT_UNUSED_ENTRY(988),
> +	ICE_PTT_UNUSED_ENTRY(989),
> +
> +	ICE_PTT_UNUSED_ENTRY(990),
> +	ICE_PTT_UNUSED_ENTRY(991),
> +	ICE_PTT_UNUSED_ENTRY(992),
> +	ICE_PTT_UNUSED_ENTRY(993),
> +	ICE_PTT_UNUSED_ENTRY(994),
> +	ICE_PTT_UNUSED_ENTRY(995),
> +	ICE_PTT_UNUSED_ENTRY(996),
> +	ICE_PTT_UNUSED_ENTRY(997),
> +	ICE_PTT_UNUSED_ENTRY(998),
> +	ICE_PTT_UNUSED_ENTRY(999),
> +
> +	ICE_PTT_UNUSED_ENTRY(1000),
> +	ICE_PTT_UNUSED_ENTRY(1001),
> +	ICE_PTT_UNUSED_ENTRY(1002),
> +	ICE_PTT_UNUSED_ENTRY(1003),
> +	ICE_PTT_UNUSED_ENTRY(1004),
> +	ICE_PTT_UNUSED_ENTRY(1005),
> +	ICE_PTT_UNUSED_ENTRY(1006),
> +	ICE_PTT_UNUSED_ENTRY(1007),
> +	ICE_PTT_UNUSED_ENTRY(1008),
> +	ICE_PTT_UNUSED_ENTRY(1009),
> +
> +	ICE_PTT_UNUSED_ENTRY(1010),
> +	ICE_PTT_UNUSED_ENTRY(1011),
> +	ICE_PTT_UNUSED_ENTRY(1012),
> +	ICE_PTT_UNUSED_ENTRY(1013),
> +	ICE_PTT_UNUSED_ENTRY(1014),
> +	ICE_PTT_UNUSED_ENTRY(1015),
> +	ICE_PTT_UNUSED_ENTRY(1016),
> +	ICE_PTT_UNUSED_ENTRY(1017),
> +	ICE_PTT_UNUSED_ENTRY(1018),
> +	ICE_PTT_UNUSED_ENTRY(1019),
> +
> +	ICE_PTT_UNUSED_ENTRY(1020),
> +	ICE_PTT_UNUSED_ENTRY(1021),
> +	ICE_PTT_UNUSED_ENTRY(1022),
> +	ICE_PTT_UNUSED_ENTRY(1023),
>  };
>  
>  static inline struct ice_rx_ptype_decoded ice_decode_rx_desc_ptype(u16 ptype)
> diff --git a/drivers/net/ethernet/intel/ice/ice_txrx.c b/drivers/net/ethernet/intel/ice/ice_txrx.c
> index da0d1337a423..9c5426ee4983 100644
> --- a/drivers/net/ethernet/intel/ice/ice_txrx.c
> +++ b/drivers/net/ethernet/intel/ice/ice_txrx.c
> @@ -1094,7 +1094,7 @@ int ice_clean_rx_irq(struct ice_ring *rx_ring, int budget)
>  		u16 stat_err_bits;
>  		int rx_buf_pgcnt;
>  		u16 vlan_tag = 0;
> -		u8 rx_ptype;
> +		u16 rx_ptype;
>  
>  		/* get the Rx desc from Rx ring based on 'next_to_clean' */
>  		rx_desc = ICE_RX_DESC(rx_ring, rx_ring->next_to_clean);
> diff --git a/drivers/net/ethernet/intel/ice/ice_txrx_lib.c b/drivers/net/ethernet/intel/ice/ice_txrx_lib.c
> index 8fe5d22ae4c3..443203bafca4 100644
> --- a/drivers/net/ethernet/intel/ice/ice_txrx_lib.c
> +++ b/drivers/net/ethernet/intel/ice/ice_txrx_lib.c
> @@ -38,10 +38,23 @@ void ice_release_rx_desc(struct ice_ring *rx_ring, u16 val)
>   * ice_ptype_to_htype - get a hash type
>   * @ptype: the ptype value from the descriptor
>   *
> - * Returns a hash type to be used by skb_set_hash
> + * Returns appropriate hash type (such as PKT_HASH_TYPE_L2/L3/L4) to be used by
> + * skb_set_hash based on PTYPE as parsed by HW Rx pipeline and is part of
> + * Rx desc.
>   */
> -static enum pkt_hash_types ice_ptype_to_htype(u8 __always_unused ptype)
> +static enum pkt_hash_types ice_ptype_to_htype(u16 ptype)
>  {
> +	struct ice_rx_ptype_decoded decoded = ice_decode_rx_desc_ptype(ptype);
> +
> +	if (!decoded.known)
> +		return PKT_HASH_TYPE_NONE;
> +	if (decoded.payload_layer == ICE_RX_PTYPE_PAYLOAD_LAYER_PAY4)
> +		return PKT_HASH_TYPE_L4;
> +	if (decoded.payload_layer == ICE_RX_PTYPE_PAYLOAD_LAYER_PAY3)
> +		return PKT_HASH_TYPE_L3;
> +	if (decoded.outer_ip == ICE_RX_PTYPE_OUTER_L2)
> +		return PKT_HASH_TYPE_L2;
> +
>  	return PKT_HASH_TYPE_NONE;
>  }
>  
> @@ -54,7 +67,7 @@ static enum pkt_hash_types ice_ptype_to_htype(u8 __always_unused ptype)
>   */
>  static void
>  ice_rx_hash(struct ice_ring *rx_ring, union ice_32b_rx_flex_desc *rx_desc,
> -	    struct sk_buff *skb, u8 rx_ptype)
> +	    struct sk_buff *skb, u16 rx_ptype)
>  {
>  	struct ice_32b_rx_flex_desc_nic *nic_mdid;
>  	u32 hash;
> @@ -81,7 +94,7 @@ ice_rx_hash(struct ice_ring *rx_ring, union ice_32b_rx_flex_desc *rx_desc,
>   */
>  static void
>  ice_rx_csum(struct ice_ring *ring, struct sk_buff *skb,
> -	    union ice_32b_rx_flex_desc *rx_desc, u8 ptype)
> +	    union ice_32b_rx_flex_desc *rx_desc, u16 ptype)
>  {
>  	struct ice_rx_ptype_decoded decoded;
>  	u16 rx_status0, rx_status1;
> @@ -166,7 +179,7 @@ ice_rx_csum(struct ice_ring *ring, struct sk_buff *skb,
>  void
>  ice_process_skb_fields(struct ice_ring *rx_ring,
>  		       union ice_32b_rx_flex_desc *rx_desc,
> -		       struct sk_buff *skb, u8 ptype)
> +		       struct sk_buff *skb, u16 ptype)
>  {
>  	ice_rx_hash(rx_ring, rx_desc, skb, ptype);
>  
> diff --git a/drivers/net/ethernet/intel/ice/ice_txrx_lib.h b/drivers/net/ethernet/intel/ice/ice_txrx_lib.h
> index 58ff58f0f972..05ac30752902 100644
> --- a/drivers/net/ethernet/intel/ice/ice_txrx_lib.h
> +++ b/drivers/net/ethernet/intel/ice/ice_txrx_lib.h
> @@ -53,7 +53,7 @@ void ice_release_rx_desc(struct ice_ring *rx_ring, u16 val);
>  void
>  ice_process_skb_fields(struct ice_ring *rx_ring,
>  		       union ice_32b_rx_flex_desc *rx_desc,
> -		       struct sk_buff *skb, u8 ptype);
> +		       struct sk_buff *skb, u16 ptype);
>  void
>  ice_receive_skb(struct ice_ring *rx_ring, struct sk_buff *skb, u16 vlan_tag);
>  #endif /* !_ICE_TXRX_LIB_H_ */
> diff --git a/drivers/net/ethernet/intel/ice/ice_xsk.c b/drivers/net/ethernet/intel/ice/ice_xsk.c
> index 68d8defd021c..a5b49cad15a6 100644
> --- a/drivers/net/ethernet/intel/ice/ice_xsk.c
> +++ b/drivers/net/ethernet/intel/ice/ice_xsk.c
> @@ -524,7 +524,7 @@ int ice_clean_rx_irq_zc(struct ice_ring *rx_ring, int budget)
>  		struct sk_buff *skb;
>  		u16 stat_err_bits;
>  		u16 vlan_tag = 0;
> -		u8 rx_ptype;
> +		u16 rx_ptype;
>  
>  		rx_desc = ICE_RX_DESC(rx_ring, rx_ring->next_to_clean);
>  
> 
> base-commit: 3df64581f83a4583315aa062de4920b1dda9ae2f
> -- 
> 2.29.2
> 
> _______________________________________________
> Intel-wired-lan mailing list
> Intel-wired-lan@osuosl.org
> https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
