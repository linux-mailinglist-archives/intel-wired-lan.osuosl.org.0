Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4299676B755
	for <lists+intel-wired-lan@lfdr.de>; Tue,  1 Aug 2023 16:26:02 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id DDBCD408B6;
	Tue,  1 Aug 2023 14:26:00 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org DDBCD408B6
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1690899960;
	bh=KdC1GMnrJlR3+zyxDHS9RH+I0O65BKh9OCrsQKOp4Hw=;
	h=From:To:In-Reply-To:References:Date:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=UrTQt3zUYzhjzgl0SrOPKDBlE2uQMy1DcPHuO6b/qNYcCf81GP+HtR/j9c3zBFnsO
	 jxspLxss/0i/LVJNhC5if8GDE486vl8Itawo1r6XboCYwDZl1XmkKPAFY3KD3JwFfp
	 qvSov9L0205eS7P5+B9/ADr31qBxox5WNhpFi+ymFBoKZJNP257JugGjwa0Slz/Oby
	 2bKDUJgJ4p+pVHxFNeAVgScWfou2Ix2CFqiM5tKkftU09+ChvC9UQ+L+gXU24GUc3e
	 k64ShFevTInDvL0GExBvskZ/TRmhp8Rdy6o5oYDlfmDa0AEeoUs2NjU2ym108seNha
	 NuO1D2E6DUjXg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id l1VYekqU4syn; Tue,  1 Aug 2023 14:26:00 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id BA6EF404BB;
	Tue,  1 Aug 2023 14:25:59 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org BA6EF404BB
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 73C8E1BF954
 for <intel-wired-lan@lists.osuosl.org>; Tue,  1 Aug 2023 14:25:54 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 0F43740038
 for <intel-wired-lan@lists.osuosl.org>; Tue,  1 Aug 2023 14:25:52 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 0F43740038
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id JklnbCxpzbX6 for <intel-wired-lan@lists.osuosl.org>;
 Tue,  1 Aug 2023 14:25:50 +0000 (UTC)
X-Greylist: delayed 492 seconds by postgrey-1.37 at util1.osuosl.org;
 Tue, 01 Aug 2023 14:25:50 UTC
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 80BB4404C8
Received: from galois.linutronix.de (Galois.linutronix.de
 [IPv6:2a0a:51c0:0:12e:550::1])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 80BB4404C8
 for <intel-wired-lan@lists.osuosl.org>; Tue,  1 Aug 2023 14:25:50 +0000 (UTC)
From: Kurt Kanzenbach <kurt@linutronix.de>
To: Vinicius Costa Gomes <vinicius.gomes@intel.com>,
 intel-wired-lan@lists.osuosl.org
In-Reply-To: <20230729001800.227269-1-vinicius.gomes@intel.com>
References: <20230729001800.227269-1-vinicius.gomes@intel.com>
Date: Tue, 01 Aug 2023 16:17:32 +0200
Message-ID: <87jzueludf.fsf@kurt>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=linutronix.de; s=2020; t=1690899453;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=SKQb4yfYfI+GHK7buamQNe0IAAGaCykGLk3StBq0IqQ=;
 b=M1naz5aAAsKbdROchXTvtcjVzwcswVM9JIhwvDTOXNq9GvNH442IA4j2H9WvE43umFzrzJ
 EuGpRMUUjQrl6rZsvBrLxCHutTCU9/4p6xGy/200Xx3U/wbeF9NLTCbGyFzEEehOPD1cDg
 2B3FU6PO0o066AjJQDlL4VABQO9Ti4o3owLifODrY93ROH5a7Ch4qBYAU6Mm4YWcPHA0yL
 3FzECV6d7tVehxJPnxkFouSs9glFEUmpSvhy1WMA6mbbd/EHQ+e7nI079AXFkzYdP904rL
 dk/j+64X8XLxDnT13tF12io1SZezovOcufX762ULuqhWaRveYdv5zXS0AYvu5Q==
X-Mailman-Original-DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed;
 d=linutronix.de; s=2020e; t=1690899453;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=SKQb4yfYfI+GHK7buamQNe0IAAGaCykGLk3StBq0IqQ=;
 b=lfBM0gnzQklLkM2gua9TgDu7Sefxr91UHFkjRz6YSMQnSLIhryf0CNo5xdEj4LiYxtHIMl
 RK8zPxbB3KCtCWBw==
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=linutronix.de header.i=@linutronix.de
 header.a=rsa-sha256 header.s=2020 header.b=M1naz5aA; 
 dkim=pass header.d=linutronix.de header.i=@linutronix.de
 header.a=ed25519-sha256 header.s=2020e header.b=lfBM0gnz
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v3] igc: Add support for
 multiple in-flight TX timestamps
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
Cc: vladimir.oltean@nxp.com, richardcochran@gmail.com,
 jesse.brandeburg@intel.com, anthony.l.nguyen@intel.com
Content-Type: multipart/mixed; boundary="===============0547472054152392177=="
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

--===============0547472054152392177==
Content-Type: multipart/signed; boundary="=-=-=";
	micalg=pgp-sha512; protocol="application/pgp-signature"

--=-=-=
Content-Type: text/plain

On Fri Jul 28 2023, Vinicius Costa Gomes wrote:
> Add support for using the four sets of timestamping registers that
> i225/i226 have available for TX.
>
> In some workloads, where multiple applications request hardware
> transmission timestamps, it was possible that some of those requests
> were denied because the only in use register was already occupied.
>
> This is also in preparation to future support for hardware
> timestamping wwith multiple PTP domains. With multiple domains chances

s/wwith/with/g;

Other than that,

Reviewed-by: Kurt Kanzenbach <kurt@linutronix.de>

--=-=-=
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQJHBAEBCgAxFiEEvLm/ssjDfdPf21mSwZPR8qpGc4IFAmTJE/wTHGt1cnRAbGlu
dXRyb25peC5kZQAKCRDBk9HyqkZzgigsEACEKpSVykwCGHt/rGVOS0GSVf1F9NGX
yYZRIpDLt2iLugPWbKd/o7BxnpM74hBNRh1cDs25wos/zfPCsKEYxEv06dQ4sUAD
bVG3Ahc2cukFY4zqPyaeoMJZ56KDURqHkVM11Q5ATPta8lBgHfjhPO9DM15/Gw11
ayunTyzofRcWmf40eFutx+4h3gGxoPmUTuZpbAZ4avpb/SpRzG+UBK9Ad69gvuXB
MLsH8QmgnUYSl9G0BSlcpSlpY+CvdYwO9gqLo8VwJ9v/bGVlU7JW79UPgEbAt9DA
GxP69+ApuPlX6/Xa6ng49YFKGb8s1zOpei6fh/y57PVEU2w/iOF7z64gjiooyl49
LD0RNg4h2/t0uFAzcnMQ06NNof/nAUd9OQbkuWm5qj4nWdWbNm3MnpaKbVKITvy8
BWkwSmJGM1X7INiEdPMHSOMQcLwms+mIQqt1x3jnKMyxc3CLLb2d/J519lOPF3Cm
Sc6hdczKAhlW3giTAqyorWOOB3px1Sm/uJhPhy4VYznO7fyxQdADTmFG9yrGjARB
TQg7vHBXJJnRA/NcOyzlwwaG7J4zU5m6c3WMYWiZmh4fyXJHYlzVZFBb17WrWjyI
HvuSfxxyyXB1H5nBSZ96Op0Q8gO2iph6IUPiR5ye7cignoo0rsFI2Ypmr9fcjDkh
N0t4H7FL3sJISA==
=EsLu
-----END PGP SIGNATURE-----
--=-=-=--

--===============0547472054152392177==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan

--===============0547472054152392177==--
